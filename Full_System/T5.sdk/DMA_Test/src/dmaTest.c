/*
 * dmaTest.c
 *
 *  Created on: Mar 23, 2021
 *      Author: ewingcho
 */

#include "xaxidma.h"
#include "xaxidma_hw.h"
#include "xparameters.h"
#include "sleep.h"
#include <math.h>

/// Fixed-point Format: 4.12 (16-bit)
typedef uint16_t fixed_point_t;

#define FIXED_POINT_FRACTIONAL_BITS 12

/// Converts 4.12 format to unsigned 32-bit integer
float fixed_to_float(u16 input)
{
    return ((float)input / (1 << FIXED_POINT_FRACTIONAL_BITS));
}

/// Converts unsigned 16-bit integer to 4.12 format
fixed_point_t float_to_fixed(u16 input)
{
    return (fixed_point_t)(round(input * (1 << FIXED_POINT_FRACTIONAL_BITS)));
}

int main () {

	u16 in[] = {1, 1};
	u16 in_fixed[2];
	u32 out_fixed;
	float out;
	u32 status;

	for (int i = 0; i < 2; i++){
		in_fixed[i] = float_to_fixed(in[i]);
		xil_printf("%d\n\r", in_fixed[i]);
	}

	XAxiDma_Config *myDMAConfig;
	XAxiDma myDMA;

	myDMAConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);

	status = XAxiDma_CfgInitialize(&myDMA, myDMAConfig);
	if(status != XST_SUCCESS){
		print("DMA Initialization Failed\n\r");
		return -1;
	}
	print("DMA Initialization Success...\n\r");

	status = XAxiDma_SimpleTransfer(&myDMA, in_fixed, 2*sizeof(u16), XAXIDMA_DMA_TO_DEVICE);
	if(status != XST_SUCCESS){
		print("DMA Transfer Failed\n\r");
		return -1;
	}
	print("DMA Transfer Success...\n\r");

	status = XAxiDma_SimpleTransfer(&myDMA, (u32) &out_fixed, 1*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
	if(status != XST_SUCCESS){
		print("DMA Transfer Failed\n\r");
		return -1;
	}
	print("DMA Receive Success...\n\r");

	out = fixed_to_float((u16)out_fixed);
	xil_printf("Neural Network Output: %d\n\r", (u16)out_fixed);
	xil_printf("Neural Network Output: %d\n\r", (int)out);
}

