/*
 * Copyright (C) 2017 - 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include "COMMON.h"
#include "PCF8563.h"
#include "display_ctrl.h"
#include "lcd.h"
#include "xil_cache.h"
#include "sd_write.h"


#define VDMA_ID1 XPAR_AXI_VDMA_1_DEVICE_ID
#define FrameBuffer_Addr1 0x20000000
XAxiVdma Vdma1;





#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

#define DEFAULT_IP_ADDRESS	"192.168.0.2"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.0.1"

void platform_enable_interrupts(void);
void start_application(void);
void transfer_data(void);
void print_app_header(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
int cnt=0;
void net_print()
{
	struct netif *netif;

		/* the mac address of the board. this should be unique per board */
		unsigned char mac_ethernet_address[] = {
			0x00, 0x0a, 0x35, 0xfe, 0x01, 0xc0 };

		netif = &server_netif;
	#if defined (__arm__) && !defined (ARMR5)
	#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
			XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
		ProgramSi5324();
		ProgramSfpPhy();
	#endif
	#endif

		/* Define this board specific macro in order perform PHY reset
		 * on ZCU102
		 */
	#ifdef XPS_BOARD_ZCU102
		IicPhyReset();
	#endif

		init_platform();

		xil_printf("\r\n\r\n");
		xil_printf("-----lwIP RAW Mode UDP Client Application-----\r\n");

		/* initialize lwIP */
		lwip_init();

		/* Add network interface to the netif_list, and set it as default */
		if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
					PLATFORM_EMAC_BASEADDR)) {
			xil_printf("Error adding N/W interface\r\n");
			return -1;
		}
		netif_set_default(netif);

		/* now enable interrupts */
		platform_enable_interrupts();

		/* specify that the network if is up */
		netif_set_up(netif);

	#if (LWIP_DHCP==1)
		/* Create a new DHCP client for this interface.
		 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
		 * the predefined regular intervals after starting the client.
		 */
		dhcp_start(netif);
		dhcp_timoutcntr = 24;
		while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
			xemacif_input(netif);

		if (dhcp_timoutcntr <= 0) {
			if ((netif->ip_addr.addr) == 0) {
				xil_printf("ERROR: DHCP request timed out\r\n");
				assign_default_ip(&(netif->ip_addr),
						&(netif->netmask), &(netif->gw));
			}
		}

		/* print IP address, netmask and gateway */
	#else
		assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
	#endif
		print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));

		xil_printf("\r\n");

		/* print app header */
		print_app_header();

		/* start the application*/
		start_application();
		xil_printf("\r\n");

		while (1) {
			if (TcpFastTmrFlag) {
				tcp_fasttmr();
				TcpFastTmrFlag = 0;
			}
			if (TcpSlowTmrFlag) {
				tcp_slowtmr();
				TcpSlowTmrFlag = 0;
			}
			cnt++;
			if(cnt>500000)
			{
				sd_write();
				cnt=0;
			}
			xemacif_input(netif);
			transfer_data();
		}

		/* never reached */
		cleanup_platform();
}


void net_print();
int main(void)
{

	SII9022_Init();
	PCF8563Init(); 	//ʱ�ӳ�ʼ��
	OV5640_720p_Init();
	PS_GPIO_Init();
	PS_GPIO_SetMode(7,OUTPUT,1);

//	SD������
	Res = f_mount(&fs,"0:/",1);
	if(Res != FR_OK)
		return -1;
//	ScuGic_Init();//
//	ScuTimer_Int_Init(1000000);

//		����VDMA
	run_vdma_frame_buffer(&Vdma, VDMA_ID, VMODE_1280x720.width, VMODE_1280x720.height,
							FrameBuffer_Addr,0, 0,BOTH);
	run_vdma_frame_buffer(&Vdma1, VDMA_ID1, VMODE_1280x720.width, VMODE_1280x720.height,
									FrameBuffer_Addr1,0, 0,BOTH);

	//��ʼ��Display controller
	DisplayInitialize(&DispCtrl, DISP_VTC_ID, DYNCLK_BASEADDR);

	//����VideoMode
	DisplaySetMode(&DispCtrl, &VMODE_1280x720);
	DisplayStart(&DispCtrl);


	net_print();
//	while(1);

	return 0;
}