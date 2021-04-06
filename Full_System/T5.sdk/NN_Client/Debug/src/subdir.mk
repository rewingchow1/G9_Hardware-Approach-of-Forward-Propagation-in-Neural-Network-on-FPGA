################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/i2c_access.c \
../src/iic_phyreset.c \
../src/layer.c \
../src/main.c \
../src/neuron.c \
../src/platform.c \
../src/platform_mb.c \
../src/platform_zynq.c \
../src/platform_zynqmp.c \
../src/sfp.c \
../src/si5324.c \
../src/tcp_perf_server.c 

OBJS += \
./src/i2c_access.o \
./src/iic_phyreset.o \
./src/layer.o \
./src/main.o \
./src/neuron.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_zynq.o \
./src/platform_zynqmp.o \
./src/sfp.o \
./src/si5324.o \
./src/tcp_perf_server.o 

C_DEPS += \
./src/i2c_access.d \
./src/iic_phyreset.d \
./src/layer.d \
./src/main.d \
./src/neuron.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_zynq.d \
./src/platform_zynqmp.d \
./src/sfp.d \
./src/si5324.d \
./src/tcp_perf_server.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../NN_Client_bsp/microblaze_0/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


