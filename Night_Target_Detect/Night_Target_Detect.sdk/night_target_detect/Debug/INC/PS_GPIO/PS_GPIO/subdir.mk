################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../INC/PS_GPIO/PS_GPIO/PS_GPIO.c 

OBJS += \
./INC/PS_GPIO/PS_GPIO/PS_GPIO.o 

C_DEPS += \
./INC/PS_GPIO/PS_GPIO/PS_GPIO.d 


# Each subdirectory must supply rules for building sources it contributes
INC/PS_GPIO/PS_GPIO/%.o: ../INC/PS_GPIO/PS_GPIO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I../../night_target_detect_bsp/ps7_cortexa9_0/include -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\LCD" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\OV5640" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PCF8563" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_IIC" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SCU" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\SII9022" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\src" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\BMP_WR" -I"D:\VivadoProject\OV5640_TFT_Back\OV5640_TFT\OV5640_TFT.sdk\night_target_detect\INC\PS_GPIO" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


