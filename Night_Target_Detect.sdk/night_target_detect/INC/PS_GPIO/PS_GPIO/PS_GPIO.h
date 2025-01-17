#ifndef PS_GPIO_H__
#define PS_GPIO_H
#include "xgpiops.h"


extern XGpioPs Gpiof;


void PS_GPIO_Init();
void PS_GPIO_Int_Init(XGpioPs_Handler Handler);
void PS_GPIO_SetInt(uint8_t GPIO_Num, uint8_t IntcMode);
void PS_GPIO_SetMode(uint8_t GPIO_Num, uint8_t Dri, uint8_t Data);
void PS_GPIO_SetPort(uint8_t GPIO_Num, uint8_t Data);
uint8_t PS_GPIO_GetPort(uint8_t GPIO_Num);

#endif
