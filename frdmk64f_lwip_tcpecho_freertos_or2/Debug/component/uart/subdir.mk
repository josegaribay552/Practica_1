################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/uart/uart_adapter.c 

OBJS += \
./component/uart/uart_adapter.o 

C_DEPS += \
./component/uart/uart_adapter.d 


# Each subdirectory must supply rules for building sources it contributes
component/uart/%.o: ../component/uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\board" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\source" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\mdio" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\drivers" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\device" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\CMSIS" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\phy" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\contrib\apps\tcpecho" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\port\arch" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\compat\posix\arpa" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\compat\posix\net" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\compat\posix" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\compat\posix\sys" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\compat\stdc" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\lwip" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\lwip\priv" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\lwip\prot" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\netif" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\netif\ppp" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include\netif\ppp\polarssl" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\utilities" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\component\serial_manager" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\component\lists" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\port" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\freertos\freertos_kernel\include" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\component\uart" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_or2\lwip\src\include" -O0 -fno-common -g3 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


