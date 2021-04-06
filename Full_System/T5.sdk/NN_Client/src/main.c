#include "backprop.h"
#include "layer.h"
#include "neuron.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "xil_types.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "netif/xadapter.h"
#include "xuartlite_i.h"
#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "xil_cache.h"

//LWIP include files
#include "lwip/ip_addr.h"
#include "lwip/tcp.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "lwip/inet.h"
#include "lwip/etharp.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

void lwip_init(); /* missing declaration in lwIP */
struct netif *echo_netif;

//TCP Network Params
#define SRC_MAC_ADDR {0x00, 0x0a, 0x35, 0x00, 0x00, 0x29}
#define SRC_IP4_ADDR "1.1.29.2"
#define IP4_NETMASK "255.255.0.0"
#define IP4_GATEWAY "1.1.0.1"
#define SRC_PORT 50001

#define DEST_IP4_ADDR  "1.1.25.2"
#define DEST_IP6_ADDR "fe80::6600:6aff:fe71:fde6"
#define DEST_PORT 7

#define TCP_SEND_BUFSIZE 20

#define UART_ADDR 0x40600000

//Function prototypes
#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip);
#else
void print_ip(char *msg, ip_addr_t *ip);
void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);
#endif
int setup_client_conn();
void tcp_send();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

//Function prototypes for callbacks
static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err);
static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);
static void tcp_client_err(void *arg, err_t err);
static void tcp_client_close(struct tcp_pcb *pcb);

//DHCP global variables
#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

//Networking global variables
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *app_netif;
static struct tcp_pcb *c_pcb;
char is_connected;

// user buffer
char user_buf[TCP_SEND_BUFSIZE];

int ack;

#define num_layers 3
#define alpha  0.15

#define image_size 28*28
#define header_size_label 8
#define header_size_image 16
#define num_of_train_images 60000
#define num_of_test_images 100
#define train_image_filesize (image_size * num_of_train_images) + header_size_image
#define train_label_filesize num_of_train_images + header_size_label
#define test_image_filesize (image_size * num_of_test_images)
#define test_label_filesize num_of_test_images

/// Fixed-point Format: 4.12 (16-bit)
typedef uint16_t fixed_point_t;
#define FIXED_POINT_FRACTIONAL_BITS 12

/// Converts 4.12 format to unsigned 8-bit integer
u8 fixed_to_float(fixed_point_t input);

/// Converts unsigned 8-bit integer to 4.12 format
fixed_point_t float_to_fixed(u8 input);

inline u8 fixed_to_float(fixed_point_t input)
{
    return ((u8)input / (u8)(1 << FIXED_POINT_FRACTIONAL_BITS));
}

inline fixed_point_t float_to_fixed(u8 input)
{
    return (fixed_point_t)(round(input * (1 << FIXED_POINT_FRACTIONAL_BITS)));
}

// UART
#define UARTLITE_DEVICE_ID XPAR_AXI_UARTLITE_0_DEVICE_ID

layer *lay = NULL;

int num_neurons[num_layers] = {784, 800, 10};

float *cost;
float full_cost;
float **input;
float **desired_outputs;
int num_training_ex;
int n=1;

float* img_test_data, * lbl_test_data;

float accuracy = 0.0;

int test = 0;

union ByteFloat {
    float f;
    unsigned char b[4];
};


int main(void)
{

	xil_printf("Enter the String to be Sent\n\r");
		while (XUartLite_IsReceiveEmpty(UART_ADDR));
		char ch;
		int i = 0;
		while (((ch = XUartLite_RecvByte(UART_ADDR)) != '\r') && (i < TCP_SEND_BUFSIZE-2))
		{
			xil_printf("%c", ch);
			user_buf[i] = ch;
			++i;
	//		ch = XUartLite_RecvByte(UART_ADDR);
		}
		user_buf[i] = '\n';
		user_buf[i+1]= '\0';
		xil_printf("\n\rDone\n\r");

	//Varibales for IP parameters
#if LWIP_IPV6==0
	ip_addr_t ipaddr, netmask, gw;
#endif

	//The mac address of the board. this should be unique per board
	unsigned char mac_ethernet_address[] = SRC_MAC_ADDR;

	//Network interface
	app_netif = &server_netif;

	//Initialize platform
	init_platform();

	//Defualt IP parameter values
#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	(void)inet_aton(SRC_IP4_ADDR, &ipaddr);
	(void)inet_aton(IP4_NETMASK, &netmask);
	(void)inet_aton(IP4_GATEWAY, &gw);
#endif
#endif

	//LWIP initialization
	lwip_init();

	//Setup Network interface and add to netif_list
#if (LWIP_IPV6 == 0)
	if (!xemac_add(app_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
#else
	if (!xemac_add(app_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	app_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(app_netif, 1);
	netif_ip6_addr_set_state(app_netif, 0, IP6_ADDR_VALID);

#endif
	netif_set_default(app_netif);

	//Now enable interrupts
	platform_enable_interrupts();

	//Specify that the network is up
	netif_set_up(app_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(app_netif);
	dhcp_timoutcntr = 24;

	while(((app_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(app_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((app_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\n\r");
			xil_printf("Configuring default IP of %s\n\r", SRC_IP4_ADDR);
			(void)inet_aton(SRC_IP4_ADDR, &(app_netif->ip_addr));
			(void)inet_aton(IP4_NETMASK, &(app_netif->netmask));
			(void)inet_aton(IP4_GATEWAY, &(app_netif->gw));
		}
	}

	ipaddr.addr = app_netif->ip_addr.addr;
	gw.addr = app_netif->gw.addr;
	netmask.addr = app_netif->netmask.addr;
#endif
#endif

	//Print connection settings
#if (LWIP_IPV6 == 0)
	print_ip_settings(&ipaddr, &netmask, &gw);
#else
	print_ip6("Board IPv6 address ", &app_netif->ip6_addr[0].u_addr.ip6);
#endif

	//Gratuitous ARP to announce MAC/IP address to network
	etharp_gratuitous(app_netif);

	//Setup connection
	setup_client_conn();

	//Event loop
	ack = 0;
	while (!ack) {
		//Call tcp_tmr functions
		//Must be called regularly
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}

		//Process data queued after interupt
		xemacif_input(app_netif);
	}

	u8 *test_labels, *test_images, *biasbyte, *weightbyte;
	float *weights, *bias;
	union ByteFloat num;
	int whole, thousandths;
    int lbl_test_len = 100;
    int img_test_len = 100;
    int row = 28;
    int col = 28;
    int j;
	u32 status;
	u32 receivedBytes=0;
	u32 totalReceivedBytes=0;
	XUartLite_Config *myUartConfig;
	XUartLite myUart;


	test_labels = malloc(sizeof(u8)*(test_label_filesize));
	test_images = malloc(sizeof(u8)*(test_image_filesize));
	weightbyte = malloc(sizeof(u8)*(635200*4));
	biasbyte = malloc(sizeof(u8)*(810*4));
	weights = (float*)malloc(sizeof(float)*(635200));
	bias = (float*)malloc(sizeof(float)*(810));


	myUartConfig = XUartLite_LookupConfig(UARTLITE_DEVICE_ID);
	status = XUartLite_CfgInitialize(&myUart, myUartConfig, XPAR_UARTLITE_0_BASEADDR);
	if(status != XST_SUCCESS)
		xil_printf("\n\rUART Initialization Failed...\n\r");
	xil_printf("\n\rUART Initialization Passed...\n\r");

	// Receive Bias
	xil_printf("Send Bias! \n\r");
	while(totalReceivedBytes < 810*4){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&biasbyte[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
		//xil_printf("Total Bias Received Bytes: %d \n\r", totalReceivedBytes);
	}
	xil_printf("Total Bias Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Bias Received! \n\r");

	j=0;
	for (int i=0; i < 810*4; i=i+4){

		num.b[0] = biasbyte[i];
		num.b[1] = biasbyte[i+1];
		num.b[2] = biasbyte[i+2];
		num.b[3] = biasbyte[i+3];
        //whole = num.f;
        //thousandths = (num.f - whole) * 1000000;
        //xil_printf("Bias num: %d.%6d \n\r", whole, thousandths);
        bias[j] = num.f;
        j++;
	}
	free(biasbyte);



	// Receive Weights
	receivedBytes=0;
	totalReceivedBytes=0;
	xil_printf("Send Weights! \n\r");
	while(totalReceivedBytes < 635200*4){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&weightbyte[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}
	xil_printf("Total Weights Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Weights Received! \n\r");

	j=0;
	for (int i=0; i < 635200*4; i=i+4){
		num.b[0] = weightbyte[i];
		num.b[1] = weightbyte[i+1];
		num.b[2] = weightbyte[i+2];
		num.b[3] = weightbyte[i+3];
       //whole = num.f;
        //thousandths = (num.f - whole) * 1000000;
        //xil_printf("Bias: %d.%6d \n\r", whole, thousandths);
        weights[j] = num.f;
        j++;
	}
	free(weightbyte);


	// Receive Test Labels
	receivedBytes=0;
	totalReceivedBytes=0;
	xil_printf("Send Labels! \n\r");
	while(totalReceivedBytes < test_label_filesize){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&test_labels[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}
	xil_printf("Total Test Label Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Labels Received! \n\r");

	lbl_test_data = (float*)malloc(sizeof(float) * (lbl_test_len * row * col + 1));

	print("Reading Test Labels\n\r");
	for (i = 0; i< lbl_test_len; i++)
	{
		lbl_test_data[i] = (float)test_labels[i];
        //whole = lbl_test_data[i];
        //thousandths = (lbl_test_data[i] - whole) * 1000;
        //xil_printf("Label: %d.%3d \n\r", whole, thousandths);
	}
	free(test_labels);


	// Receive Test Images
	receivedBytes=0;
	totalReceivedBytes=0;
	xil_printf("Send Images! \n\r");
	while(totalReceivedBytes < test_image_filesize){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&test_images[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}

	xil_printf("Total Test Image Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Images Received! \n\r");

	img_test_data = (float*)malloc(sizeof(float) * (img_test_len * row * col + 1));

	xil_printf("Reading Test Images\n\r");
	for (i=0; i < img_test_len * row * col; i++)
	{
		xil_printf("Index: %d\n\r", i);
		img_test_data[i] = (float)test_images[i]/255;
        //whole = img_test_data[i];
        //thousandths = (img_test_data[i] - whole) * 1000;
        //xil_printf("Pixel: %d.%3d \n\r", whole, thousandths);
	}
	free(test_images);


	// Initialize Neural Network Module

	if(init(weights, bias)!= SUCCESS_INIT)
	{
		xil_printf("Error in Initialization...\n\r");
		exit(0);
	}

	//print_weights_bias();

	// Cost Function
	cost = (float*)malloc(num_neurons[num_layers - 1] * sizeof(float));

	test_nn(100);

	if (dinit() != SUCCESS_DINIT)
	{
		xil_printf("Error in Dinitialization...\n\r");
	}

	cleanup_platform();
	return 0;
}


int init(float* weights, float* bias)
{
	if(create_architecture(weights, bias) != SUCCESS_CREATE_ARCHITECTURE)
    {
        xil_printf("Error in creating architecture...\n\r");
        return ERR_INIT;
    }

    xil_printf("Neural Network Created Successfully...\n\r\n\r");
    return SUCCESS_INIT;
}



// Create Neural Network Architecture
int create_architecture(float* weights, float* bias)
{
    int i=0,j=0;
    lay = (layer*) malloc(num_layers * sizeof(layer));
    if (lay)
    {
        for (i = 0; i < num_layers; i++)
        {
            lay[i] = create_layer(num_neurons[i]);
            lay[i].num_neu = num_neurons[i];
            xil_printf("Created Layer: %d\n\r", i + 1);
            xil_printf("Number of Neurons in Layer %d: %d\n\r", i + 1, lay[i].num_neu);

            for (j = 0; j < num_neurons[i]; j++)
            {
                if (i < (num_layers - 1))
                {
                    lay[i].neu[j] = create_neuron(num_neurons[i + 1]);
                }

                xil_printf("Neuron %d in Layer %d created\n\r", j + 1, i + 1);
            }
            xil_printf("\n");
        }

        xil_printf("\n");
    }

    // Initialize the weights
    if(initialize_weights(weights, bias) != SUCCESS_INIT_WEIGHTS)
    {
    	xil_printf("Error Initilizing weights...\n\r");
        return ERR_CREATE_ARCHITECTURE;
    }

    return SUCCESS_CREATE_ARCHITECTURE;
}

int initialize_weights(float* weights, float* bias)
{
	int i,j,k;
	int count=0,count1=0;

    if(lay == NULL)
    {
        xil_printf("No layers in Neural Network...\n\r");
        return ERR_INIT_WEIGHTS;
    }

    xil_printf("Initializing Weights...\n\r");

    for(i=0;i<num_layers-1;i++)
    {
        
        for(j=0;j<num_neurons[i];j++)
        {
            for(k=0;k<num_neurons[i+1];k++)
            {
                // Initialize Output Weights for each neuron
                lay[i].neu[j].out_weights[k] = weights[count];
                count++;
                lay[i].neu[j].dw[k] = 0.0;
            }

            if(i>0) 
            {
                lay[i].neu[j].bias = bias[count1];
                count1++;
            }
        }
    }   


    xil_printf("\n\r");
    
    for (j=0; j<num_neurons[num_layers-1]; j++)
    {
        lay[num_layers-1].neu[j].bias = bias[count1];
        count1++;
    }

    return SUCCESS_INIT_WEIGHTS;
}

void print_weights_bias(void)
{
    // print bias
    int i, j, k;
    int whole, thousandths;
    for (i = 1; i < num_layers; i++)
    {
        for (j = 0; j < num_neurons[i]; j++)
        {
            //xil_printf("Bias: %f\n\r", lay[i].neu[j].bias);
            whole = lay[i].neu[j].bias;
            thousandths = (lay[i].neu[j].bias - whole) * 1000000;
            xil_printf("Bias: %d.%6d \n\r", whole, thousandths);

        }
    }
    // print weights
    for (i = 0; i < num_layers - 1; i++)
    {
        for (j = 0; j < num_neurons[i]; j++)
        {
            for (k = 0; k < num_neurons[i + 1]; k++)
            {
                //xil_printf("Weight: %f\n\r", lay[i].neu[j].out_weights[k]);
                whole = lay[i].neu[j].out_weights[k];
                thousandths = (lay[i].neu[j].out_weights[k] - whole) * 1000000;
                xil_printf("Bias: %d.%6d \n\r", whole, thousandths);
            }
        }
    }
}

void forward_prop(void)
{
    int i, j, k;
    float max = -1000.0;
    int max_id = -1;

    for (i = 1; i < num_layers; i++)
    {
        for (j = 0; j < num_neurons[i]; j++)
        {
            lay[i].neu[j].z = lay[i].neu[j].bias;

            for (k = 0; k < num_neurons[i - 1]; k++)
            {
                lay[i].neu[j].z = lay[i].neu[j].z + ((lay[i - 1].neu[k].out_weights[j]) * (lay[i - 1].neu[k].actv));
            }

            // Relu Activation Function for Hidden Layers
            if (i < num_layers - 1)
            {
                if ((lay[i].neu[j].z) < 0)
                {
                    lay[i].neu[j].actv = 0;
                }

                else
                {
                    lay[i].neu[j].actv = lay[i].neu[j].z;
                }
            }

            // Sigmoid Activation function for Output Layer
            else
            {
                lay[i].neu[j].actv = 1 / (1 + exp(-lay[i].neu[j].z));
                if (test)
                {
                    if (max < lay[i].neu[j].actv)
                    {
                        max = lay[i].neu[j].actv;
                        max_id = j;
                    }
                    if (j == num_neurons[num_layers - 1] - 1)
                    {
                        xil_printf("Output Digit: %d \n\r ", max_id);

                    user_buf[0] = max_id +'0';
            		user_buf[1] = '\n';
            		user_buf[2]= '\0';
            		tcp_send();
                    ack = 0;
                	while (!ack) {
                		//Call tcp_tmr functions
                		//Must be called regularly
                		if (TcpFastTmrFlag) {
                			tcp_fasttmr();
                			TcpFastTmrFlag = 0;
                		}
                		if (TcpSlowTmrFlag) {
                			tcp_slowtmr();
                			TcpSlowTmrFlag = 0;
                		}

                		//Process data queued after interupt
                		xemacif_input(app_netif);
                	}
                    }
                }
                
            }
            
        }
    }
}


// Test the trained network
void test_nn(int test_len) 
{
    test = 1;
    int it, i;
    for (it = 0; it < test_len; it++)
    {
        xil_printf("Testing %d\n\r", it + 1);
        for (i = 0; i < num_neurons[0]; i++)
        {
            lay[0].neu[i].actv = img_test_data[i + num_neurons[0]*it];
            //xil_printf("actv: %f\n", lay[0].neu[i].actv);
        }
        forward_prop();

        xil_printf("Expected Digit: %d\n\r", (int)lbl_test_data[it]);
        user_buf[0] = (int)lbl_test_data[it] +'0';
		user_buf[1] = '\n';
		user_buf[2]= '\0';
		tcp_send();
        ack = 0;
    	while (!ack) {
    		//Call tcp_tmr functions
    		//Must be called regularly
    		if (TcpFastTmrFlag) {
    			tcp_fasttmr();
    			TcpFastTmrFlag = 0;
    		}
    		if (TcpSlowTmrFlag) {
    			tcp_slowtmr();
    			TcpSlowTmrFlag = 0;
    		}

    		//Process data queued after interupt
    		xemacif_input(app_netif);
    	}
        xil_printf("\n");
    }
}

// TODO: Add different Activation functions
//void activation_functions()

int dinit(void)
{
    // TODO:
    // Free up all the structures

    return SUCCESS_DINIT;
}


#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

void tcp_send()
{
	//Just send a single packet
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
	char send_buf[TCP_SEND_BUFSIZE];
	u32_t i;

	for(i = 0; i < TCP_SEND_BUFSIZE-1; i = i + 1)
	{
		send_buf[i] = user_buf[i];
	}

	//Loop until enough room in buffer (should be right away)
	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);

	//Enqueue some data to send
	tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
	/*
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_write: %d\n\r", err);
		return err;
	}
	*/
	//send the data packet
	tcp_output(c_pcb);
	/*
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_output: %d\n\r",err);
		return err;
	}
	*/
	xil_printf("Packet data sent\n\r");
}

int setup_client_conn()
{
	struct tcp_pcb *pcb;
	err_t err;
	ip_addr_t remote_addr;

	xil_printf("Setting up client connection\n\r");

#if LWIP_IPV6==1
	remote_addr.type = IPADDR_TYPE_V6;
	err = inet6_aton(DEST_IP6_ADDR, &remote_addr);
#else
	err = inet_aton(DEST_IP4_ADDR, &remote_addr);
#endif

	if (!err) {
		xil_printf("Invalid Server IP address: %d\n\r", err);
		return -1;
	}

	//Create new TCP PCB structure
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	//Bind to specified @port
	err = tcp_bind(pcb, IP_ANY_TYPE, SRC_PORT);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", SRC_PORT, err);
		return -2;
	}

	//Connect to remote server (with callback on connection established)
	err = tcp_connect(pcb, &remote_addr, DEST_PORT, tcp_client_connected);
	if (err) {
		xil_printf("Error on tcp_connect: %d\n\r", err);
		tcp_client_close(pcb);
		return -1;
	}

	is_connected = 0;

	xil_printf("Waiting for server to accept connection\n\r");

	return 0;
}

static void tcp_client_close(struct tcp_pcb *pcb)
{
	err_t err;

	xil_printf("Closing Client Connection\n\r");

	if (pcb != NULL) {
		tcp_sent(pcb, NULL);
		tcp_recv(pcb,NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
}

static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n\r");
		return err;
	}

	xil_printf("Connection to server established\n\r");

	//Store state (for callbacks)
	c_pcb = tpcb;
	is_connected = 1;

	//Set callback values & functions
	tcp_arg(c_pcb, NULL);
	tcp_recv(c_pcb, tcp_client_recv);
	tcp_sent(c_pcb, tcp_client_sent);
	tcp_err(c_pcb, tcp_client_err);



	//ADD CODE HERE to do when connection established

	//Just send a single packet
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
	char send_buf[TCP_SEND_BUFSIZE];
	u32_t i;

	for(i = 0; i < TCP_SEND_BUFSIZE-1; i = i + 1)
	{
		send_buf[i] = user_buf[i];
	}

	//Loop until enough room in buffer (should be right away)
	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);

	//Enqueue some data to send
	err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_write: %d\n\r", err);
		return err;
	}

	//send the data packet
	err = tcp_output(c_pcb);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_output: %d\n\r",err);
		return err;
	}

	xil_printf("Packet data sent\n\r");

	//END OF ADDED CODE



	return ERR_OK;
}

static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
	//If no data, connection closed
	if (!p) {
		xil_printf("No data received\n\r");
		tcp_client_close(tpcb);
		return ERR_OK;
	}



	//ADD CODE HERE to do on packet reception

	//Print message
	xil_printf("Packet received, %d bytes\n\r", p->tot_len);

	//Print packet contents to terminal
	char* packet_data = (char*) malloc(p->tot_len);
	pbuf_copy_partial(p, packet_data, p->tot_len, 0); //Note - inefficient way to access packet data
	u32_t i;

	for(i = 0; i < p->tot_len; i = i + 1)
		putchar(packet_data[i]);
	ack = 1;
	//END OF ADDED CODE



	//Indicate done processing
	tcp_recved(tpcb, p->tot_len);

	//Free the received pbuf
	pbuf_free(p);

	return 0;
}

static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{


	//ADD CODE HERE to do on packet acknowledged

	//Print message
	xil_printf("Packet sent successfully, %d bytes\n\r", len);

	//END OF ADDED CODE



	return 0;
}

static void tcp_client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_client_close(c_pcb);
	c_pcb = NULL;
	xil_printf("TCP connection aborted\n\r");
}
