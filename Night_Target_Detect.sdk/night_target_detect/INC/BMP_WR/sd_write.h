#ifndef SD_WRITE_H_
#define SD_WRITE_H_

#include "COMMON.h"
#include "ff.h"

FATFS fs;
FRESULT Res;


char Photo_Name[20];

uint32_t bram_data;

void sd_write();
#endif
