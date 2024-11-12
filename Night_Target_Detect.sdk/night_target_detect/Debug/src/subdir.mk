################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/COMMON.c \
../src/ISR.c \
../src/i2c_access.c \
../src/iic_phyreset.c \
../src/main.c \
../src/platform.c \
../src/platform_mb.c \
../src/platform_zynq.c \
../src/platform_zynqmp.c \
../src/sfp.c \
../src/si5324.c \
../src/udp_perf_client.c 

OBJS += \
./src/COMMON.o \
./src/ISR.o \
./src/i2c_access.o \
./src/iic_phyreset.o \
./src/main.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_zynq.o \
./src/platform_zynqmp.o \
./src/sfp.o \
./src/si5324.o \
./src/udp_perf_client.o 

C_DEPS += \
./src/COMMON.d \
./src/ISR.d \
./src/i2c_access.d \
./src/iic_phyreset.d \
./src/main.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_zynq.d \
./src/platform_zynqmp.d \
./src/sfp.d \
./src/si5324.d \
./src/udp_perf_client.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I../../night_target_detect_bsp/ps7_cortexa9_0/include -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\LCD" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\OV5640" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PCF8563" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_IIC" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SCU" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SII9022" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\src" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\BMP_WR" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_GPIO" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


