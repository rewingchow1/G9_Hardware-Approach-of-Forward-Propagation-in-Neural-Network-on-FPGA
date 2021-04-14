#include "backprop.h"
#include "layer.h"
#include "neuron.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdlib.h>
#include <math.h>
#include "xil_types.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartlite.h"

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

	u8 *test_labels, *test_images, *biasbyte, *weightbyte;
	float *weights, *bias;
	union ByteFloat num;
	int whole, thousandths;
    int lbl_test_len = 100;
    int img_test_len = 100;
    int row = 28;
    int col = 28;
    int i, j;
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
                        xil_printf("Output Digit: %d  ", max_id);
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
