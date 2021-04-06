/******************************************************************************
*
* Copyright (C) 2009 - 2017 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

// self defined includes
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdlib.h>
#include "neuralnet.h"
#include "xuartlite.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xaxidma.h"
#include "xaxidma_hw.h"
#include "sleep.h"

u32 checkHalted(u32 baseAddress,u32 offset);


// UART
#define UARTLITE_DEVICE_ID XPAR_AXI_UARTLITE_0_DEVICE_ID


int main()
{

	int accuracy_count = 0;
	float accuracy;
	u8 *test_labels, *test_images;
	u32 uart_status;
	u32 receivedBytes=0;
	u32 totalReceivedBytes=0;
	XUartLite_Config *myUartConfig;
	XUartLite myUart;

	u32 dma_status;
	u32 dma_recv_arr[10];
	u16 * test_images_fixed;

	test_labels = malloc(sizeof(u8)*(test_label_filesize));
	test_images = malloc(sizeof(u8)*(test_image_filesize));
	test_images_fixed = malloc(sizeof(u16)*(test_image_filesize));


	// init uart
	myUartConfig = XUartLite_LookupConfig(UARTLITE_DEVICE_ID);
	uart_status = XUartLite_CfgInitialize(&myUart, myUartConfig, XPAR_UARTLITE_0_BASEADDR);
	if(uart_status != XST_SUCCESS)
		xil_printf("\n\rUART Initialization Failed...\n\r");
	xil_printf("\n\rUART Initialization Passed...\n\r");


	// Receive Test Labels
	receivedBytes=0;
	totalReceivedBytes=0;
	xil_printf("Send Labels! \n\r");
	while(totalReceivedBytes < test_label_filesize){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&test_labels[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}
	xil_printf("Total Test Label Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Labels Received! \n\r");


	// Receive Test Images
	receivedBytes=0;
	totalReceivedBytes=0;
	xil_printf("Send Images! \n\r");
	while(totalReceivedBytes < test_image_filesize){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&test_images[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}

	xil_printf("Total Test Image Received Bytes: %d \n\r", totalReceivedBytes);
	xil_printf("Images Received! \n\r");

	// convert the byte test image to fix point test image
//	u16 tmp;
//	print("Converting u8 to Fixed-Point Notation\n\r");
//	for(int i=0; i<test_image_filesize; ++i)
//	{
//		//xil_printf("Index: %d\n\r", i);
//		tmp = float_to_fixed(test_images[i]/255.0);
//		test_images_fixed[i] = tmp;
//	}
//	print("Conversion Done\n\r");
//	free(test_images);

	// Init DMA
	XAxiDma_Config *myDMAConfig;
	XAxiDma myDMA;

	myDMAConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	dma_status = XAxiDma_CfgInitialize(&myDMA, myDMAConfig);
	if(dma_status != XST_SUCCESS){
		print("DMA Initialization Failed\n\r");
		return -1;
	}
	print("DMA Initialization Success...\n\r");

//	for (int i=0; i<num_of_test_images;i++){
//
//		// Send test images to the dma
//		dma_status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
//		Xil_DCacheFlushRange((u32)test_images_fixed,image_size*sizeof(u16));
//		dma_status = XAxiDma_SimpleTransfer(&myDMA, (u32)&dma_recv_arr[0], 10*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
//		dma_status = XAxiDma_SimpleTransfer(&myDMA, (UINTPTR)&test_images_fixed[image_size*i], image_size*sizeof(u16), XAXIDMA_DMA_TO_DEVICE);
//		if(dma_status != XST_SUCCESS)
//		{
//			print("DMA Transmit Failed\n\r");
//			return -1;
//		}
//		xil_printf("\n\rDMA Transmit Successful, Test Image %d Sent\n\r", i+1);
//
//
//		float max = 0;
//		float tmp_out;
//		int digit = 0;
//
//		// get the output result for the current test image
//		for (int j=0; j<10; j++)
//		{
//			xil_printf("Neural Network Digit Weights: %d  %d\n\r", (u16)dma_recv_arr[j],j);
//			tmp_out = fixed_to_float((u16)dma_recv_arr[j]);
//			if (tmp_out > max)
//			{
//				max = tmp_out;
//				digit = j;
//			}
//
//		}
//		if ((int)digit == (int)test_labels[i]) accuracy_count++;
//		accuracy = (accuracy_count * 100)/(i+1);
//        xil_printf("Accuracy Count: %d	Accuracy: %d \n\r", accuracy_count, (int)accuracy);
//		xil_printf("Neural Network Output: %d	Label: %d \n\r", (int)digit, (int)test_labels[i]);
//	}
//
//	return 0;
//}

	u16 tmp;
	float tmp_out;
	float max;
	u8 digit;
	for (int i=0; i<num_of_test_images;i++){

		// convert the byte test image to fix point test image
		print("\n\rConverting u8 to Fixed-Point Notation\n\r");
		for(int j=0; j<image_size; ++j)
		{
			tmp = float_to_fixed(test_images[i*image_size + j]/255.0);
			test_images_fixed[i*image_size + j] = tmp;
			//xil_printf("Iteration:  %d Value: %d\n\r", i, (int)tmp);
		}
		print("Conversion Done\n\r");

		// Send test images to the dma
		dma_status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
		Xil_DCacheFlushRange((u32)test_images_fixed,image_size*sizeof(u16));
		dma_status = XAxiDma_SimpleTransfer(&myDMA, (u32)&dma_recv_arr[0], 10*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		dma_status = XAxiDma_SimpleTransfer(&myDMA, (UINTPTR)&test_images_fixed[image_size*i], image_size*sizeof(u16), XAXIDMA_DMA_TO_DEVICE);
		if(dma_status != XST_SUCCESS)
		{
			print("DMA Transmit Failed\n\r");
			return -1;
		}
		xil_printf("DMA Transmit Successful, Test Image %d Sent\n\r", i+1);

		max = 0;
		digit = 0;

		// get the output result for the current test image
		for (int j=0; j<10; j++)
		{
			xil_printf("Neural Network Digit Weights: %d  %d\n\r", (u16)dma_recv_arr[j],j);
			tmp_out = fixed_to_float((u16)dma_recv_arr[j]);
			if (tmp_out > max)
			{
				max = tmp_out;
				digit = j;
			}

		}

//		if(tcp_send_data(&digit, 1) != ERR_OK)
//		{
//			xil_printf("Send Neural Network Output Failed! \n\r");
//		}
//		ack = 0;
//		while (!ack) {
//			//Call tcp_tmr functions
//			//Must be called regularly
//			if (TcpFastTmrFlag) {
//				tcp_fasttmr();
//				TcpFastTmrFlag = 0;
//			}
//			if (TcpSlowTmrFlag) {
//				tcp_slowtmr();
//				TcpSlowTmrFlag = 0;
//			}
//
//			//Process data queued after interupt
//			xemacif_input(app_netif);
//		}

		if ((int)digit == (int)test_labels[i]) accuracy_count++;
		accuracy = (accuracy_count * 100)/(i+1);
        xil_printf("Accuracy Count: %d	Accuracy: %d \n\r", accuracy_count, (int)accuracy);
		xil_printf("Neural Network Output: %d	Label: %d \n\r", (int)digit, (int)test_labels[i]);
	}
	return 0;
}


u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}
