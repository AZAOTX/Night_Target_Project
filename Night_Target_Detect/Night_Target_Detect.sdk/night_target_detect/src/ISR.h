#ifndef AC820_LIB_ISR_H_
#define AC820_LIB_ISR_H_

#include "COMMON.h"

void ScuTimer_IRQ_Handler(void *CallBackRef);
extern uint8_t sd_flag;
#endif /* AC820_LIB_ISR_H_ */
