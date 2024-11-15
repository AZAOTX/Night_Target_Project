#include "sd_write.h"
#include "PCF8563.h"
#include "BMP_WR.h"
sTime nowtime;
int Cnt=0;
uint8_t light=0;
#define Photo_Addr (XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x11000000)
void sd_write(){
				bram_data = Xil_In32(BRAM_ADDR);//get BRAM_data
				xil_printf("bram_data:%d\n",bram_data);
				GetRealTime(&nowtime);//get time
				if(1 == bram_data) {

						for(int j = 0; j < VMODE_1280x720.height; j++) {
							for(int i = 0; i < VMODE_1280x720.width; i++) {
								memcpy(
									(void *) (Photo_Addr + (j * VMODE_1280x720.width + i) * 2),
									(void *) (FrameBuffer_Addr + (j * VMODE_1280x720.width + i) * 2),
									2
								);
							}
						}

						PS_GPIO_SetPort(7, light);
						light = !light;
						sprintf(Photo_Name,"%02x-%02x-%02x_%02x_%02x_%02x.bmp",nowtime.year,nowtime.mon,nowtime.day,nowtime.hour,nowtime.min,nowtime.sec);
//						sprintf(Photo_Name, "%02x-%02x-%02x-%02x:%02x:%02x.bmp",nowtime.year,nowtime.mon,nowtime.day,nowtime.hour,nowtime.min,nowtime.sec);
						bmp_write_rgb565(Photo_Name, (char *)&BMODE_1280x720, (char *)Photo_Addr);

				}
}
