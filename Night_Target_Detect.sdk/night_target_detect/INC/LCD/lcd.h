#ifndef LCD_LCD_H_
#define LCD_LCD_H_

#include "xil_types.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "stdarg.h"
#include "stdint.h"
#include "sleep.h"

#include "math.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "display_ctrl.h"
#include "vdma_api.h"






//*************************************************
//鐢荤瑪棰滆壊
#define LCD_WHITE		0XFFFF	//鐧借壊
#define LCD_BLACK		0X0000	//榛戣壊

#define LCD_RED			0xF800	//绾㈣壊
#define LCD_GREEN		0x07E0	//缁胯壊
#define LCD_BLUE		0x001F	//钃濊壊

#define LCD_YELLOW		0xFFE0	//榛勮壊
#define LCD_CYAN		0x07FF	//闈掕壊
#define LCD_PURPLE		0x780F	//绱壊

#define LCD_GRAY		0xCE79	//鐏拌壊0XCCCCCC
#define LCD_BROWN		0X8945	//妫曡壊0X8A2A2A
#define LCD_VIOLET		0X88BC	//绱綏鍏�0X8A2BE2
#define LCD_PINK		0XFE19	//绮夌孩鑹�0XFFC0CB
#define LCD_DARKBLUE	0x000F	//娣辫摑鑹�
#define LCD_ORANGE		0xFC00	//姗橀粍鑹�0XFF8000
//*************************************************

//frame buffer鐨勮捣濮嬪湴鍧�
#define FrameBuffer_Addr	(XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x00500000)//1100000
#define BYTES_PIXEL        2                          //姣忎釜鍍忕礌鐨勫瓧鑺傛暟锛孯GB565鍗�2涓瓧鑺�
#define DYNCLK_BASEADDR    XPAR_AXI_DYNCLK_0_BASEADDR //鍔ㄦ�佹椂閽熷熀鍦板潃
#define VDMA_ID            XPAR_AXIVDMA_0_DEVICE_ID   //VDMA鍣ㄤ欢ID
#define DISP_VTC_ID        XPAR_VTC_0_DEVICE_ID       //VTC鍣ㄤ欢ID


//LCD鐨勭敾绗旈鑹插拰鑳屾櫙鑹�
extern uint32_t  POINT_COLOR;//榛樿绾㈣壊
extern uint32_t  BACK_COLOR; //鑳屾櫙棰滆壊.榛樿涓虹櫧鑹�


extern XAxiVdma     Vdma;
extern DisplayCtrl  DispCtrl;

//鍑芥暟澹版槑
void LCD_Init();
void LCD_Refresh();//鍒锋柊鍥惧儚
void LCD_DrawPoint(uint16_t x,uint16_t y,uint32_t color);
void LCD_Color_Fill(uint16_t x1,uint16_t y1,uint16_t x2,uint16_t y2,uint32_t color);
void LCD_Clear(uint32_t color);
uint8_t LCD_DrawWaveLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_DrawLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2,uint32_t color);
void LCD_DrawRectangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint32_t color);
void LCD_ShowChar(uint16_t x,uint16_t y,uint8_t num,uint8_t size,uint8_t mode);
void LCD_ShowString(uint16_t x,uint16_t y,uint16_t width,uint16_t height,uint8_t size,uint8_t mode,uint8_t *p);
uint32_t LCD_Pow(uint8_t m,uint8_t n);
void LCD_ShowNum(uint16_t x,uint16_t y,uint32_t num,uint8_t len,uint8_t size);
void LCD_ShowxNum(uint16_t x,uint16_t y,uint32_t num,uint8_t len,uint8_t size,uint8_t mode);
void LCD_DisplayPic(uint16_t x, uint16_t y,uint8_t const *Pic);

#endif /* LCD_LCD_H_ */
