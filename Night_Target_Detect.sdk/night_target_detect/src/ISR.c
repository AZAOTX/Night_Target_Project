/**
  *****************************************************************************
  * 					����û��жϴ�������������ͳһ����
  *****************************************************************************
  *
  * @File   : ISR.c
  * @By     : Sun
  * @Version: V0.5
  * @Date   : 2022 / 06 / 01
  * @Shop	: https://xiaomeige.taobao.com/
  *
  *****************************************************************************
**/

#include "ISR.h"
#include "sd_write.h"
#include "COMMON.h"

/**
  *****************************************************
  * @brief	˽�ж�ʱ���жϴ�������
  * @tag	��������������˽�ж�ʱ���жϣ����ڲ������û����򼴿�
  *****************************************************
**/


void ScuTimer_IRQ_Handler(void *CallBackRef)
{
	/* �������û����������� */

	sd_write();

	/* �������������������� */
    XScuTimer_ClearInterruptStatus(&ScuTimer);
}