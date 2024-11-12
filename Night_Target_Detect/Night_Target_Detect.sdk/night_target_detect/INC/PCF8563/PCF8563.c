#include "PCF8563.h"
#include "COMMON.h"
XIicPs PCF8563;//��������
/*******************************************************************************
* �ļ���:��������
* ��  ��:
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.05.23)
*******************************************************************************/
uint8_t buffer[7];//���ݴ洢����
sTime CurTime;

/*******************************************************************************
* �ļ�����static uint8_t RTC_BinToBcd2(uint8_t BINValue)
* ��  ��: ��BINת��ΪBCD
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
static uint8_t RTC_BinToBcd2(uint8_t BINValue)
{
    uint8_t bcdhigh = 0;

    while (BINValue >= 10)
    {
        bcdhigh++;
        BINValue -= 10;
    }

    return ((uint8_t)(bcdhigh << 4) | BINValue);
}

/*******************************************************************************
* �ļ�����static uint8_t RTC_Bcd2ToBin(uint8_t BCDValue)
* ��  ��: ��BCDת��ΪBIN
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
static uint8_t RTC_Bcd2ToBin(uint8_t BCDValue)
{
    uint8_t tmp = 0;

    tmp = ((uint8_t)(BCDValue & (uint8_t)0xF0) >> (uint8_t)0x04) * 10;
    return (tmp + (BCDValue & (uint8_t)0x0F));
}

/*******************************************************************************
* �ļ�����void PCF8563_Write_Byte(uint8_t REG_ADD, uint8_t dat)
* ��  ��: PCF8563ĳ�Ĵ���д��һ���ֽ�����
* ��  �ܣ�REG_ADD��Ҫ�����Ĵ�����ַ          dat��    Ҫд�������
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Write_Byte(uint8_t REG_ADD, uint8_t dat)
{
	PS_IIC_Write_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD,dat);
}

/*******************************************************************************
* �ļ�����uint8_t PCF8563_Read_Byte(uint8_t REG_ADD)
* ��  ��: PCF8563ĳ�Ĵ�����ȡһ���ֽ�����
* ��  �ܣ�REG_ADD��Ҫ�����Ĵ�����ַ          ��ȡ�õ��ļĴ�����ֵ
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
uint8_t PCF8563_Read_Byte(uint8_t REG_ADD)
{
    uint8_t ReData;
    ReData = PS_IIC_Read_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD);
    return ReData;
}

/*******************************************************************************
* �ļ�����void PCF8563_Write_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
* ��  ��: PCF8563д���������
* ��  �ܣ�REG_ADD��Ҫ�����Ĵ�����ʼ��ַ          num��    д����������           *WBuff�� д�����ݻ���
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Write_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
{
	PS_IIC_SeqWrite_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD,pBuff, num);
}
/*******************************************************************************
* �ļ�����void PCF8563_Read_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
* ��  ��: PCF8563��ȡ��������
* ��  �ܣ�REG_ADD��Ҫ�����Ĵ�����ʼ��ַ          num��    д����������           *WBuff�� ��ȡ���ݻ���
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Read_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
{
	PS_IIC_SeqRead_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD, pBuff, num);
}

/*******************************************************************************
* �ļ�����void SetRealTime(sTime* time)
* ��  ��: PCF8563����ʱ����Ϣ
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
void SetRealTime(sTime* time)
{
    //
    //��������
    time->mon &= ~PCF_Century_SetBitC;

    buffer[0] = time->sec;
    buffer[1] = time->min;
    buffer[2] = time->hour;
    buffer[3] = time->day;
    buffer[4] = time->week;
    buffer[5] = time->mon;
    buffer[6] = time->year;
    //д�����ݵ��Ĵ���
    //
    PCF8563_Write_nByte(PCF8563_Address_Seconds, 7, buffer);
}

/*******************************************************************************
* �ļ�����void GetRealTime(sTime* time)
* ��  ��: PCF8563��ȡʱ����Ϣ
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.03.03)
*******************************************************************************/
void GetRealTime(sTime* time)
{
    PCF8563_Read_nByte(PCF8563_Address_Seconds, 7, buffer);        //��ȡ�Ĵ�����ֵ
    buffer[0] &= PCF8563_Shield_Seconds;         //������Чλ
    buffer[1] &= PCF8563_Shield_Minutes;
    buffer[2] &= PCF8563_Shield_Hours;
    buffer[3] &= PCF8563_Shield_Days;
    buffer[4] &= PCF8563_Shield_WeekDays;
    buffer[5] &= PCF8563_Shield_Months_Century;
    buffer[6] &= PCF8563_Shield_Years;

    time->year  = buffer[6];
    time->mon   = buffer[5];
    time->week = buffer[4];
    time->day   = buffer[3];
    time->hour  = buffer[2];
    time->min = buffer[1];
    time->sec = buffer[0];

}

/*******************************************************************************
* �ļ���: void PCF8563Init(void)
* ��  ��:  PCF8563��ʼ��ʱ��
* ��  �ܣ�
* ��  �ߣ������
* �汾�ţ�1.0.1(2017.05.23)
*******************************************************************************/
void PCF8563Init(void)
{
	PS_IIC_Init(&PCF8563,IIC_1_DEVICE_ID,100000);
    sTime InitTime = {0x24, 0x11, 0x07, 0x12,0x00,0x00,0x01}; //24��10��14��12ʱ00��00������һ
	SetRealTime(&InitTime);
	PCF8563_Write_Byte(PCF8563_Address_Control_Status_1, 0x00);
	PCF8563_Write_Byte(PCF8563_Address_Control_Status_2, 0x00);
}
