#ifndef AC820_LIB_COMMON_H_
#define AC820_LIB_COMMON_H_


//ϵͳͷ�ļ�
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <stdarg.h>
#include <stdint.h>

//Xilinxͷ�ļ�
#include "xil_types.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xscutimer.h"


//AC820ͷ�ļ�
#include "ISR.h"
#include "SCU_GIC.h"
#include "SCU_TIMER.h"

#include "lcd.h"
#include "PS_IIC.h"
#include "OV5640.h"



#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xil_cache.h"


//�û�ͷ�ļ�



//�û��궨��
#define	CPU_CLK_HZ	XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ	//CPUʱ��Ƶ��(��λHz)
#define INPUT		1
#define OUTPUT		0
#define	REG8		8
#define	REG16		16
#define BRAM_ADDR       XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR//BRAM
//�û���������

#endif /* AC820_LIB_COMMON_H_ */
