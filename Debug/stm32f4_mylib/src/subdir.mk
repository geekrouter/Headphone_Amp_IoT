################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../stm32f4_mylib/src/EXTI.c \
../stm32f4_mylib/src/GPIO.c \
../stm32f4_mylib/src/HD44780.c \
../stm32f4_mylib/src/I2C.c \
../stm32f4_mylib/src/NEC_remote_controller.c \
../stm32f4_mylib/src/RCC.c \
../stm32f4_mylib/src/SysTick.c \
../stm32f4_mylib/src/TIM.c \
../stm32f4_mylib/src/USART.c \
../stm32f4_mylib/src/dac.c \
../stm32f4_mylib/src/error_types.c \
../stm32f4_mylib/src/fifo.c \
../stm32f4_mylib/src/misc.c \
../stm32f4_mylib/src/sd_card_reader.c \
../stm32f4_mylib/src/spi.c 

OBJS += \
./stm32f4_mylib/src/EXTI.o \
./stm32f4_mylib/src/GPIO.o \
./stm32f4_mylib/src/HD44780.o \
./stm32f4_mylib/src/I2C.o \
./stm32f4_mylib/src/NEC_remote_controller.o \
./stm32f4_mylib/src/RCC.o \
./stm32f4_mylib/src/SysTick.o \
./stm32f4_mylib/src/TIM.o \
./stm32f4_mylib/src/USART.o \
./stm32f4_mylib/src/dac.o \
./stm32f4_mylib/src/error_types.o \
./stm32f4_mylib/src/fifo.o \
./stm32f4_mylib/src/misc.o \
./stm32f4_mylib/src/sd_card_reader.o \
./stm32f4_mylib/src/spi.o 

C_DEPS += \
./stm32f4_mylib/src/EXTI.d \
./stm32f4_mylib/src/GPIO.d \
./stm32f4_mylib/src/HD44780.d \
./stm32f4_mylib/src/I2C.d \
./stm32f4_mylib/src/NEC_remote_controller.d \
./stm32f4_mylib/src/RCC.d \
./stm32f4_mylib/src/SysTick.d \
./stm32f4_mylib/src/TIM.d \
./stm32f4_mylib/src/USART.d \
./stm32f4_mylib/src/dac.d \
./stm32f4_mylib/src/error_types.d \
./stm32f4_mylib/src/fifo.d \
./stm32f4_mylib/src/misc.d \
./stm32f4_mylib/src/sd_card_reader.d \
./stm32f4_mylib/src/spi.d 


# Each subdirectory must supply rules for building sources it contributes
stm32f4_mylib/src/%.o: ../stm32f4_mylib/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_ITM -DSTM32F405xx -DUSE_HAL_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"D:\Eclipse_workspace\Headphone_Amp_IoT\stm32f4_mylib\inc" -I"D:\Eclipse_workspace\Headphone_Amp_IoT\stm32f4_mylib\src" -I"../system/include/stm32f4-hal" -I"D:\Eclipse_workspace\Headphone_Amp_IoT\stm32f4_mylib\FatFS" -std=gnu11 -Wmissing-prototypes -Wstrict-prototypes -Wbad-function-cast -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


