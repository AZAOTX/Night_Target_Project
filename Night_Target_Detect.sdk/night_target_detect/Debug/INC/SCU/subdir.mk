################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../INC/SCU/SCU_GIC.c \
../INC/SCU/SCU_TIMER.c 

OBJS += \
./INC/SCU/SCU_GIC.o \
./INC/SCU/SCU_TIMER.o 

C_DEPS += \
./INC/SCU/SCU_GIC.d \
./INC/SCU/SCU_TIMER.d 


# Each subdirectory must supply rules for building sources it contributes
INC/SCU/%.o: ../INC/SCU/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I../../night_target_detect_bsp/ps7_cortexa9_0/include -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\LCD" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\OV5640" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PCF8563" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_IIC" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SCU" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SII9022" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\src" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\BMP_WR" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_GPIO" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

