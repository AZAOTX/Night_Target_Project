################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include INC/SII9022/subdir.mk
-include INC/SCU/subdir.mk
-include INC/PS_IIC/subdir.mk
-include INC/PS_GPIO/PS_GPIO/subdir.mk
-include INC/PCF8563/subdir.mk
-include INC/OV5640/subdir.mk
-include INC/LCD/subdir.mk
-include INC/BMP_WR/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
night_target_detect.elf.size \


# All Target
all: pre-build main-build

# Main-build Target
main-build: night_target_detect.elf secondary-outputs

# Tool invocations
night_target_detect.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	arm-none-eabi-gcc -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=Xilinx.spec -Wl,-T -Wl,../src/lscript.ld -L../../night_target_detect_bsp/ps7_cortexa9_0/lib -o "night_target_detect.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

night_target_detect.elf.size: night_target_detect.elf
	@echo 'Invoking: ARM v7 Print Size'
	arm-none-eabi-size night_target_detect.elf  |tee "night_target_detect.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) night_target_detect.elf
	-@echo ' '

pre-build:
	-a9-linaro-pre-build-step
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
