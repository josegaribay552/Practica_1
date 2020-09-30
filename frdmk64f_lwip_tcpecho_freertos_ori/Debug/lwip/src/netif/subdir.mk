################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/netif/bridgeif.c \
../lwip/src/netif/bridgeif_fdb.c \
../lwip/src/netif/ethernet.c \
../lwip/src/netif/lowpan6.c \
../lwip/src/netif/lowpan6_ble.c \
../lwip/src/netif/lowpan6_common.c \
../lwip/src/netif/slipif.c \
../lwip/src/netif/zepif.c 

OBJS += \
./lwip/src/netif/bridgeif.o \
./lwip/src/netif/bridgeif_fdb.o \
./lwip/src/netif/ethernet.o \
./lwip/src/netif/lowpan6.o \
./lwip/src/netif/lowpan6_ble.o \
./lwip/src/netif/lowpan6_common.o \
./lwip/src/netif/slipif.o \
./lwip/src/netif/zepif.o 

C_DEPS += \
./lwip/src/netif/bridgeif.d \
./lwip/src/netif/bridgeif_fdb.d \
./lwip/src/netif/ethernet.d \
./lwip/src/netif/lowpan6.d \
./lwip/src/netif/lowpan6_ble.d \
./lwip/src/netif/lowpan6_common.d \
./lwip/src/netif/slipif.d \
./lwip/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/netif/%.o: ../lwip/src/netif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DCPU_MK64FN1M0VLL12_cm4 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\board" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\source" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\mdio" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\drivers" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\device" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\CMSIS" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\phy" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\contrib\apps\tcpecho" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\port\arch" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\compat\posix\arpa" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\compat\posix\net" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\compat\posix" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\compat\posix\sys" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\compat\stdc" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\lwip" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\lwip\priv" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\lwip\prot" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\netif" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\netif\ppp" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include\netif\ppp\polarssl" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\utilities" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\component\serial_manager" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\component\lists" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\port" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\freertos\freertos_kernel\include" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\component\uart" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src" -I"C:\MCU\frdmk64f_lwip_tcpecho_freertos_ori\lwip\src\include" -O0 -fno-common -g3 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


