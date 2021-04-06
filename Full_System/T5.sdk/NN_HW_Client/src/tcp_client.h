//BSP includes for peripherals
#include "lwip/err.h"
#include "lwip/ip_addr.h"
#include "xparameters.h"
#include "netif/xadapter.h"
#include "xuartlite_i.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "xil_cache.h"

//LWIP include files
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


// self defined functions
int init_tcp();
void adjust_tcp_speed();
err_t tcp_send_data(void * arr, int arr_size);
void tcp_send(u8 * user_buf);
err_t send_data_from_user(void);
int init_tcp_client(void);

void lwip_init(); /* missing declaration in lwIP */


//Function prototypes
#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip);
#else
void print_ip(char *msg, ip_addr_t *ip);
void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);
#endif
int setup_client_conn();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

//Function prototypes for callbacks
err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err);
err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);
void tcp_client_err(void *arg, err_t err);
void tcp_client_close(struct tcp_pcb *pcb);

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
struct netif server_netif;
struct netif *app_netif;
struct tcp_pcb *c_pcb;
char is_connected;
