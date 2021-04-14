//// self defined includes
//#include "tcp_client.h"
//
//
//struct netif *echo_netif;
//
////TCP Network Params
//#define SRC_MAC_ADDR {0x00, 0x0a, 0x35, 0x00, 0x00, 0x29}
//#define SRC_IP4_ADDR "1.1.29.2"
//#define IP4_NETMASK "255.255.0.0"
//#define IP4_GATEWAY "1.1.0.1"
//#define SRC_PORT 50001
//
//#define DEST_IP4_ADDR  "1.1.25.2"
//#define DEST_IP6_ADDR "fe80::6600:6aff:fe71:fde6"
//#define DEST_PORT 7
//
//#define TCP_SEND_BUFSIZE 20
//
//#define UART_ADDR 0x40600000
//
//#if LWIP_IPV6==1
//void print_ip6(char *msg, ip_addr_t *ip)
//{
//	print(msg);
//	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
//			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
//			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));
//
//}
//#else
//void print_ip(char *msg, ip_addr_t *ip)
//{
//	print(msg);
//	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
//			ip4_addr3(ip), ip4_addr4(ip));
//}
//
//void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
//{
//
//	print_ip("Board IP: ", ip);
//	print_ip("Netmask : ", mask);
//	print_ip("Gateway : ", gw);
//}
//#endif
//
//
///*int setup_client_conn()
//{
//	struct tcp_pcb *pcb;
//	err_t err;
//	ip_addr_t remote_addr;
//
//	xil_printf("Setting up client connection\n\r");
//
//#if LWIP_IPV6==1
//	remote_addr.type = IPADDR_TYPE_V6;
//	err = inet6_aton(DEST_IP6_ADDR, &remote_addr);
//#else
//	err = inet_aton(DEST_IP4_ADDR, &remote_addr);
//#endif
//
//	if (!err) {
//		xil_printf("Invalid Server IP address: %d\n\r", err);
//		return -1;
//	}
//
//	//Create new TCP PCB structure
//	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
//	if (!pcb) {
//		xil_printf("Error creating PCB. Out of Memory\n\r");
//		return -1;
//	}
//
//	//Bind to specified @port
//	err = tcp_bind(pcb, IP_ANY_TYPE, SRC_PORT);
//	if (err != ERR_OK) {
//		xil_printf("Unable to bind to port %d: err = %d\n\r", SRC_PORT, err);
//		return -2;
//	}
//	print("setup_client_conn");
//	//Connect to remote server (with callback on connection established)
//	err = tcp_connect(pcb, &remote_addr, DEST_PORT, tcp_client_connected);
//	if (err) {
//		xil_printf("Error on tcp_connect: %d\n\r", err);
//		tcp_client_close(pcb);
//		return -1;
//	}
//
//	is_connected = 0;
//
//	xil_printf("Waiting for server to accept connection\n\r");
//
//	return 0;
//}
//
//void tcp_client_close(struct tcp_pcb *pcb)
//{
//	err_t err;
//
//	xil_printf("Closing Client Connection\n\r");
//
//	if (pcb != NULL) {
//		tcp_sent(pcb, NULL);
//		tcp_recv(pcb,NULL);
//		tcp_err(pcb, NULL);
//		err = tcp_close(pcb);
//		if (err != ERR_OK) {
//			/* Free memory with abort */
//			tcp_abort(pcb);
//		}
//	}
//}
//
//err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err)
//{
//	if (err != ERR_OK) {
//		tcp_client_close(tpcb);
//		xil_printf("Connection error\n\r");
//		return err;
//	}
//	print("tcp_client_connected");
//	xil_printf("Connection to server established\n\r");
//
//	//Store state (for callbacks)
//	c_pcb = tpcb;
//	is_connected = 1;
//
//	//Set callback values & functions
//	tcp_arg(c_pcb, NULL);
//	tcp_recv(c_pcb, tcp_client_recv);
//	tcp_sent(c_pcb, tcp_client_sent);
//	tcp_err(c_pcb, tcp_client_err);
//
//	//ADD CODE HERE to do when connection established
//
//	//Just send a single packet
//	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
//	char send_buf[TCP_SEND_BUFSIZE] = "packet sent from the client: Hello\n";
//
//
//	//Loop until enough room in buffer (should be right away)
//	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);
//
//	//Enqueue some data to send
//	err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_write: %d\n\r", err);
//		return err;
//	}
//
//	//send the data packet
//	err = tcp_output(c_pcb);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_output: %d\n\r",err);
//		return err;
//	}
//
//	xil_printf("Packet data sent\n\r");
//
//	//END OF ADDED CODE
//
//	return ERR_OK;
//}
//
//err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
//{
//	//If no data, connection closed
//	if (!p) {
//		xil_printf("No data received\n\r");
//		tcp_client_close(tpcb);
//		return ERR_OK;
//	}
//
//
//
//	//ADD CODE HERE to do on packet reception
//
//	//Print message
//	xil_printf("Packet received, %d bytes\n\r", p->tot_len);
//
//	//Print packet contents to terminal
//	char* packet_data = (char*) malloc(p->tot_len);
//	pbuf_copy_partial(p, packet_data, p->tot_len, 0); //Note - inefficient way to access packet data
//	u32_t i;
//
//	for(i = 0; i < p->tot_len; i = i + 1)
//		putchar(packet_data[i]);
//
//	//END OF ADDED CODE
//
//
//
//	//Indicate done processing
//	tcp_recved(tpcb, p->tot_len);
//
//	//Free the received pbuf
//	pbuf_free(p);
//
//	return 0;
//}
//
//err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
//{
//
//
//	//ADD CODE HERE to do on packet acknowledged
//
//	//Print message
//	xil_printf("Packet sent successfully, %d bytes\n\r", len);
//
//	//END OF ADDED CODE
//
//
//
//	return 0;
//}
//
//void tcp_client_err(void *arg, err_t err)
//{
//	LWIP_UNUSED_ARG(err);
//	tcp_client_close(c_pcb);
//	c_pcb = NULL;
//	xil_printf("TCP connection aborted\n\r");
//}
//
//
//// self defined function
//int init_tcp_client(void)
//{
////Varibales for IP parameters
//#if LWIP_IPV6==0
//	ip_addr_t ipaddr, netmask, gw;
//#endif
//
//	//The mac address of the board. this should be unique per board
//	unsigned char mac_ethernet_address[] = SRC_MAC_ADDR;
//
//	//Network interface
//	app_netif = &server_netif;
//
//	//Initialize platform
//	init_platform();
//
//
//	//Defualt IP parameter values
//#if LWIP_IPV6==0
//#if LWIP_DHCP==1
//	ipaddr.addr = 0;
//	gw.addr = 0;
//	netmask.addr = 0;
//#else
//	(void)inet_aton(SRC_IP4_ADDR, &ipaddr);
//	(void)inet_aton(IP4_NETMASK, &netmask);
//	(void)inet_aton(IP4_GATEWAY, &gw);
//#endif
//#endif
//
//	//LWIP initialization
//	lwip_init();
//
//	//Setup Network interface and add to netif_list
//#if (LWIP_IPV6 == 0)
//	if (!xemac_add(app_netif, &ipaddr, &netmask,
//						&gw, mac_ethernet_address,
//						PLATFORM_EMAC_BASEADDR)) {
//		xil_printf("Error adding N/W interface\n\r");
//		return -1;
//	}
//#else
//	if (!xemac_add(app_netif, NULL, NULL, NULL, mac_ethernet_address,
//						PLATFORM_EMAC_BASEADDR)) {
//		xil_printf("Error adding N/W interface\n\r");
//		return -1;
//	}
//	app_netif->ip6_autoconfig_enabled = 1;
//
//	netif_create_ip6_linklocal_address(app_netif, 1);
//	netif_ip6_addr_set_state(app_netif, 0, IP6_ADDR_VALID);
//
//#endif
//	netif_set_default(app_netif);
//
//	//Now enable interrupts
//	platform_enable_interrupts();
//
//	//Specify that the network is up
//	netif_set_up(app_netif);
//
//#if (LWIP_IPV6 == 0)
//#if (LWIP_DHCP==1)
//	/* Create a new DHCP client for this interface.
//	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
//	 * the predefined regular intervals after starting the client.
//	 */
//	dhcp_start(app_netif);
//	dhcp_timoutcntr = 24;
//
//	while(((app_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
//		xemacif_input(app_netif);
//
//	if (dhcp_timoutcntr <= 0) {
//		if ((app_netif->ip_addr.addr) == 0) {
//			xil_printf("DHCP Timeout\n\r");
//			xil_printf("Configuring default IP of %s\n\r", SRC_IP4_ADDR);
//			(void)inet_aton(SRC_IP4_ADDR, &(app_netif->ip_addr));
//			(void)inet_aton(IP4_NETMASK, &(app_netif->netmask));
//			(void)inet_aton(IP4_GATEWAY, &(app_netif->gw));
//		}
//	}
//
//	ipaddr.addr = app_netif->ip_addr.addr;
//	gw.addr = app_netif->gw.addr;
//	netmask.addr = app_netif->netmask.addr;
//#endif
//#endif
//
//	//Print connection settings
//#if (LWIP_IPV6 == 0)
//	print_ip_settings(&ipaddr, &netmask, &gw);
//#else
//	print_ip6("Board IPv6 address ", &app_netif->ip6_addr[0].u_addr.ip6);
//#endif
//
//	//Gratuitous ARP to announce MAC/IP address to network
//	etharp_gratuitous(app_netif);
//	print("init");
//	//Setup connection
//	setup_client_conn();
//
//	return 0;
//}
//
//
//void adjust_tcp_speed(void)
//{
//	//Call tcp_tmr functions
//	//Must be called regularly
//	if (TcpFastTmrFlag) {
//		tcp_fasttmr();
//		TcpFastTmrFlag = 0;
//	}
//	if (TcpSlowTmrFlag) {
//		tcp_slowtmr();
//		TcpSlowTmrFlag = 0;
//	}
//}
//
//err_t tcp_send_data(void * arr, int arr_size)
//{
//	err_t err;
//	//Just send a single packet
//	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
//	print("test1");
//	//Loop until enough room in buffer (should be right away)
//	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);
//	print("test2");
//	//Enqueue some data to send
//	err = tcp_write(c_pcb, arr, arr_size, apiflags);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_write: %d\n\r", err);
//		return err;
//	}
//
//	//send the data packet
//	err = tcp_output(c_pcb);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_output: %d\n\r",err);
//		return err;
//	}
//
//	xil_printf("Packet data sent\n\r");
//
//	//END OF ADDED CODE
//
//	return ERR_OK;
//}
//
//void tcp_send(u8 * user_buf)
//{
//	//Just send a single packet
//	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
//	char send_buf[TCP_SEND_BUFSIZE];
//	u32_t i;
//
//	for(i = 0; i < TCP_SEND_BUFSIZE-1; i = i + 1)
//	{
//		send_buf[i] = user_buf[i];
//	}
//
//	//Loop until enough room in buffer (should be right away)
//	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);
//
//	//Enqueue some data to send
//	tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
//	/*
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_write: %d\n\r", err);
//		return err;
//	}
//	*/
//	//send the data packet
//	tcp_output(c_pcb);
//	/*
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_output: %d\n\r",err);
//		return err;
//	}
//	*/
//	xil_printf("Packet data sent\n\r");
//}
//
//
//err_t send_data_from_user(void)
//{
//	char ch;
//	int i = 0;
//	char user_buf[TCP_SEND_BUFSIZE];
//
//	xil_printf("Enter the String to be Sent\n\r");
//
//	while (XUartLite_IsReceiveEmpty(UART_ADDR));
//
//	while (((ch = XUartLite_RecvByte(UART_ADDR)) != '\r') && (i < TCP_SEND_BUFSIZE-2))
//	{
//		xil_printf("%c", ch);
//		user_buf[i] = ch;
//		++i;
//	}
//	user_buf[i] = '\n';
//	user_buf[i+1]= '\0';
//	xil_printf("\n\rDone\n\r");
//
//	return tcp_send_data((void*)user_buf, sizeof(user_buf));
//}
