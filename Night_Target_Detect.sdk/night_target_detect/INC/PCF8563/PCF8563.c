#include "PCF8563.h"
#include "COMMON.h"
XIicPs PCF8563;//创建对象
/*******************************************************************************
* 文件名:变量定义
* 描  述:
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.05.23)
*******************************************************************************/
uint8_t buffer[7];//数据存储缓存
sTime CurTime;

/*******************************************************************************
* 文件名：static uint8_t RTC_BinToBcd2(uint8_t BINValue)
* 描  述: 将BIN转换为BCD
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
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
* 文件名：static uint8_t RTC_Bcd2ToBin(uint8_t BCDValue)
* 描  述: 将BCD转换为BIN
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
static uint8_t RTC_Bcd2ToBin(uint8_t BCDValue)
{
    uint8_t tmp = 0;

    tmp = ((uint8_t)(BCDValue & (uint8_t)0xF0) >> (uint8_t)0x04) * 10;
    return (tmp + (BCDValue & (uint8_t)0x0F));
}

/*******************************************************************************
* 文件名：void PCF8563_Write_Byte(uint8_t REG_ADD, uint8_t dat)
* 描  述: PCF8563某寄存器写入一个字节数据
* 功  能：REG_ADD：要操作寄存器地址          dat：    要写入的数据
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Write_Byte(uint8_t REG_ADD, uint8_t dat)
{
	PS_IIC_Write_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD,dat);
}

/*******************************************************************************
* 文件名：uint8_t PCF8563_Read_Byte(uint8_t REG_ADD)
* 描  述: PCF8563某寄存器读取一个字节数据
* 功  能：REG_ADD：要操作寄存器地址          读取得到的寄存器的值
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
uint8_t PCF8563_Read_Byte(uint8_t REG_ADD)
{
    uint8_t ReData;
    ReData = PS_IIC_Read_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD);
    return ReData;
}

/*******************************************************************************
* 文件名：void PCF8563_Write_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
* 描  述: PCF8563写入多组数据
* 功  能：REG_ADD：要操作寄存器起始地址          num：    写入数据数量           *WBuff： 写入数据缓存
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Write_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
{
	PS_IIC_SeqWrite_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD,pBuff, num);
}
/*******************************************************************************
* 文件名：void PCF8563_Read_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
* 描  述: PCF8563读取多组数据
* 功  能：REG_ADD：要操作寄存器起始地址          num：    写入数据数量           *WBuff： 读取数据缓存
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
void PCF8563_Read_nByte(uint8_t REG_ADD, uint8_t num, uint8_t *pBuff)
{
	PS_IIC_SeqRead_Reg(&PCF8563,PCF8563_ADDR,REG8,REG_ADD, pBuff, num);
}

/*******************************************************************************
* 文件名：void SetRealTime(sTime* time)
* 描  述: PCF8563设置时间信息
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
void SetRealTime(sTime* time)
{
    //
    //拷贝数据
    time->mon &= ~PCF_Century_SetBitC;

    buffer[0] = time->sec;
    buffer[1] = time->min;
    buffer[2] = time->hour;
    buffer[3] = time->day;
    buffer[4] = time->week;
    buffer[5] = time->mon;
    buffer[6] = time->year;
    //写入数据到寄存器
    //
    PCF8563_Write_nByte(PCF8563_Address_Seconds, 7, buffer);
}

/*******************************************************************************
* 文件名：void GetRealTime(sTime* time)
* 描  述: PCF8563读取时间信息
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.03.03)
*******************************************************************************/
void GetRealTime(sTime* time)
{
    PCF8563_Read_nByte(PCF8563_Address_Seconds, 7, buffer);        //读取寄存器数值
    buffer[0] &= PCF8563_Shield_Seconds;         //屏蔽无效位
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
* 文件名: void PCF8563Init(void)
* 描  述:  PCF8563初始化时间
* 功  能：
* 作  者：大核桃
* 版本号：1.0.1(2017.05.23)
*******************************************************************************/
void PCF8563Init(void)
{
	PS_IIC_Init(&PCF8563,IIC_1_DEVICE_ID,100000);
    sTime InitTime = {0x24, 0x11, 0x07, 0x12,0x00,0x00,0x01}; //24年10月14日12时00分00秒星期一
	SetRealTime(&InitTime);
	PCF8563_Write_Byte(PCF8563_Address_Control_Status_1, 0x00);
	PCF8563_Write_Byte(PCF8563_Address_Control_Status_2, 0x00);
}
