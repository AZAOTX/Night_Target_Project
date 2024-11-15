#include "BMP_WR.h"

FIL fil;
FATFS fatfs;

unsigned char read_line_buf[1920 * 3];
unsigned char Write_line_buf[1920 * 3];


void bmp_read(char * bmp,u8 *frame,u32 stride)
{
    short y,x;
    short Ximage;
    short Yimage;
    u32 iPixelAddr = 0;
    FRESULT res;
    unsigned char TMPBUF[64];
    unsigned int br;

    res = f_open(&fil, bmp, FA_OPEN_EXISTING | FA_READ);
    if(res != FR_OK)
    {
        return ;
    }
    res = f_read(&fil, TMPBUF, 54, &br);
    if(res != FR_OK)
    {
        return ;
    }
    Ximage=(unsigned short int)((TMPBUF[19] << 8) | TMPBUF[18]);
    Yimage=(unsigned short int)((TMPBUF[23] << 8) | TMPBUF[22]);
    iPixelAddr = (Yimage-1)*stride ;

    for(y = 0; y < Yimage ; y++)
    {
        f_read(&fil, read_line_buf, Ximage * 3, &br);
        for(x = 0; x < Ximage; x++)
        {
            frame[x * BYTES_PIXEL + iPixelAddr + 0] = read_line_buf[x * 3 + 0];
            frame[x * BYTES_PIXEL + iPixelAddr + 1] = read_line_buf[x * 3 + 1];
            frame[x * BYTES_PIXEL + iPixelAddr + 2] = read_line_buf[x * 3 + 2];
        }
        iPixelAddr -= stride;
    }
    f_close(&fil);
}


void bmp_write(char * name, char *head_buf, char *data_buf)
{
    short y,x;
    short Ximage;
    short Yimage;
    u32 iPixelAddr = 0;
    FRESULT res;
    unsigned int br;         // File R/W count

    memset(&Write_line_buf, 0, 1920*3) ;

    res = f_open(&fil, name, FA_CREATE_ALWAYS | FA_WRITE);
    if(res != FR_OK)
    {
        return ;
    }
    res = f_write(&fil, head_buf, 54, &br) ;
    if(res != FR_OK)
    {
        return ;
    }
    Ximage=(unsigned short)((head_buf[19] << 8) | head_buf[18]);
    Yimage=(unsigned short)((head_buf[23] << 8) | head_buf[22]);
    iPixelAddr = (Yimage-1)*Ximage*3 ;
    for(y = 0; y < Yimage ; y++)
    {
        for(x = 0; x < Ximage; x++)
        {
            Write_line_buf[x*3 + 0] = data_buf[x*3 + iPixelAddr + 0] ;
            Write_line_buf[x*3 + 1] = data_buf[x*3 + iPixelAddr + 1] ;
            Write_line_buf[x*3 + 2] = data_buf[x*3 + iPixelAddr + 2] ;
        }
        res = f_write(&fil, Write_line_buf, Ximage*3, &br) ;
        if(res != FR_OK)
        {
        	printf("Write BMP Failed!\n");
            return;
        }
        iPixelAddr -= Ximage*3;
    }

    f_close(&fil);
    printf("Write BMP Successfully!\n");
}


void bmp_write_rgb565(char *name, char *head_buf, char *data_buf)
{
    short y, x;
    short Ximage;
    short Yimage;
    u32 iPixelAddr = 0;
    FRESULT res;
    unsigned int br;         // File R/W count

    // 设置为每像素 2 字节缓冲区大小
    memset(&Write_line_buf, 0, 1920 * 3);

    res = f_open(&fil, name, FA_CREATE_ALWAYS | FA_WRITE);
    if (res != FR_OK)
    {
        return;
    }

    // 写入 BMP 文件头
    res = f_write(&fil, head_buf, 54, &br);
    if (res != FR_OK)
    {
        return;
    }

    // 获取图像宽度和高度
    Ximage = (unsigned short)((head_buf[19] << 8) | head_buf[18]);
    Yimage = (unsigned short)((head_buf[23] << 8) | head_buf[22]);

    // 设置初始像素地址DDR
    iPixelAddr = (Yimage - 1) * Ximage * 2;  // 每行 2 字节


    uint16_t rgb565;
    uint8_t red,green,blue,r,g,b;


    // 开始写入图像数据
    for (y = 0; y < Yimage; y++)
    {
        for (x = 0; x < Ximage; x++)
        {
//          Write_line_buf[x * 2 + 0] = data_buf[x * 2 + iPixelAddr + 0];
//			Write_line_buf[x * 2 + 1] = data_buf[x * 2 + iPixelAddr + 1];

			rgb565=((uint16_t)data_buf[x * 2 + iPixelAddr + 0]) | ((uint16_t)data_buf[x * 2 + iPixelAddr + 1] << 8) ;
			// 提取 RGB565 中的颜色分量
			red = (rgb565 >> 11) & 0x1F;  // 5 bits
			green = (rgb565 >> 5) & 0x3F; // 6 bits
			blue = rgb565 & 0x1F;         // 5 bits

			// 将颜色分量扩展到 8 位
			r = (red << 3) | (red >> 2);     // 5 bits to 8 bits
			g = (green << 2) | (green >> 4); // 6 bits to 8 bits
			b = (blue << 3) | (blue >> 2);   // 5 bits to 8 bits

			Write_line_buf[x*3 + 0] = b ;
			Write_line_buf[x*3 + 1] = g ;
			Write_line_buf[x*3 + 2] = r ;


        }

        // 写入每行数据
        res = f_write(&fil, Write_line_buf, Ximage * 3, &br);
        if (res != FR_OK)
        {
            printf("Write BMP Failed!\n");
            return;
        }
        iPixelAddr -= Ximage * 2;  // 移动到上一行
    }

    f_close(&fil);
//    xil_printf("Write BMP Successfully!\n");
}

