/*******************************************************************************
* �ļ�����PCF8563.h
* ��  ��������ģ��ͷ�ļ�
* ���ߣ�MADE BY DA HE TAO
* �汾�ţ�1.0
*******************************************************************************/
#ifndef __PCF8563_H__
#define __PCF8563_H__
#include "COMMON.h"
/*********************************************/
//�������Ͷ��岿��
//����ṹ�������
/********************************************/

typedef struct {
	uint16_t year;
	uint8_t mon;
	uint8_t day;
	uint8_t hour;
	uint8_t min;
	uint8_t sec;
	uint8_t week;
}sTime;

/*********************************************/
//Ԥ���벿��
/********************************************/

/*
�˴�����ȫ�ֱ���������
*/
extern sTime CurTime;

/*********************************************/
//�Ӻ���������������
/********************************************/

#define PCF8563_Check_Data                       (uint8_t)0x55  //����ã�����������ֵ

#define PCF8563_ADDR 							 (uint8_t)0x51 	//7λ��ַ
#define PCF8563_Write                            (uint8_t)0xa2  //д����
#define PCF8563_Read                             (uint8_t)0xa3  //����������ã�PCF8563_Write + 1��

//
//��Դ��λ����
//
#define PCF8563_PowerResetEnable                 (uint8_t)0x08
#define PCF8563_PowerResetDisable                (uint8_t)0x09

//
//����λ��������
//
#define PCF_Century_SetBitC                      (uint8_t)0x80

#define PCF_Century_19xx                         (uint8_t)0x03
#define PCF_Century_20xx                         (uint8_t)0x04

//
//���ݸ�ʽ
//
#define PCF_Format_BIN                           (uint8_t)0x01
#define PCF_Format_BCD                           (uint8_t)0x02

//
//����PCF8563ģʽ��
//
#define PCF_Mode_Normal                          (uint8_t)0x05

/******************************************************************************
                             �����Ĵ�����ַ�궨��
******************************************************************************/

#define PCF8563_Address_Control_Status_1         (uint8_t)0x00  //����/״̬�Ĵ���1
#define PCF8563_Address_Control_Status_2         (uint8_t)0x01  //����/״̬�Ĵ���2


/******************************************************************************
                               �������κ궨��
******************************************************************************/

#define PCF8563_Shield_Control_Status_1          (uint8_t)0xa8
#define PCF8563_Shield_Control_Status_2          (uint8_t)0x1f

#define PCF8563_Shield_Seconds                   (uint8_t)0x7f
#define PCF8563_Shield_Minutes                   (uint8_t)0x7f
#define PCF8563_Shield_Hours                     (uint8_t)0x3f

#define PCF8563_Shield_Days                      (uint8_t)0x3f
#define PCF8563_Shield_WeekDays                  (uint8_t)0x07
#define PCF8563_Shield_Months_Century            (uint8_t)0x1f
#define PCF8563_Shield_Years                     (uint8_t)0xff

/******************************************************************************
                                 �����궨��
******************************************************************************/
#define PCF8563_Address_Years                    (uint8_t)0x08  //��
#define PCF8563_Address_Months                   (uint8_t)0x07  //��
#define PCF8563_Address_Days                     (uint8_t)0x05  //��
#define PCF8563_Address_WeekDays                 (uint8_t)0x06  //����
#define PCF8563_Address_Hours                    (uint8_t)0x04  //Сʱ
#define PCF8563_Address_Minutes                  (uint8_t)0x03  //����
#define PCF8563_Address_Seconds                  (uint8_t)0x02  //��
//����/״̬�Ĵ���1 --> 0x00
//
#define PCF_Control_Status_NormalMode            (uint8_t)(~(1<<7))  //��ͨģʽ
#define PCF_Control_Status_EXT_CLKMode           (uint8_t)(1<<7)     //EXT_CLK����ģʽ
#define PCF_Control_ChipRuns                     (uint8_t)(~(1<<5))  //оƬ����
#define PCF_Control_ChipStop                     (uint8_t)(1<<5)     //оƬֹͣ���У�����оƬ��Ƶ���첽���߼�0
#define PCF_Control_TestcClose                   (uint8_t)(~(1<<3))  //��Դ��λ����ʧЧ����ͨģʽʱ���߼�0��
#define PCF_Control_TestcOpen                    (uint8_t)(1<<3)     //��Դ��λ������Ч
//��Ĵ��� --> 0x02
//
#define PCF_Accuracy_ClockNo                     (uint8_t)(1<<7)     //����֤׼ȷ��ʱ��/��������
#define PCF_Accuracy_ClockYes                    (uint8_t)(~(1<<7))  //��֤׼ȷ��ʱ��/��������

#define IIC_1_DEVICE_ID			XPAR_XIICPS_1_DEVICE_ID
/******************************************************************************
                                  �ⲿ���ܺ���
******************************************************************************/

void	PCF8563_Write_Byte                 (uint8_t REG_ADD, uint8_t dat);  //PCF8563ĳ�Ĵ���д��һ���ֽ�����
uint8_t	PCF8563_Read_Byte                  (uint8_t REG_ADD);  //PCF8563ĳ�Ĵ�����ȡһ���ֽ�����
void	PCF8563_Write_nByte                (uint8_t REG_ADD, uint8_t num, uint8_t *pBuff);  //PCF8563д���������
void	PCF8563_Read_nByte                 (uint8_t REG_ADD, uint8_t num, uint8_t *pBuff);  //PCF8563��ȡ��������



void SetRealTime(sTime *time);  //PCF8563д��ʱ����Ϣ
void GetRealTime(sTime *time); //PCF8563��ȡʱ����Ϣ
void PCF8563Init(void);

#endif
