# Hardware Approach of Forward Propagation in Neural Network on FPGA

## Description:
Implemented a 2-layer (784-16-10) neural network built on hardware that can recognize handwritten digits from the MNIST dataset. Performance and accuracy of the neural network will be sent from one FPGA (Client) with the neural network IP core to another FPGA (Server) through LWIP TCP Ethernet communication. This data is visualized on a PC that is connected by UART to the second FPGA.

![unnamed](https://user-images.githubusercontent.com/71918289/114693748-e9dec000-9ce7-11eb-8b89-381dd94d94c1.png)


## How to Use:
### Client with Neural Network:
#### To Run Out of the Box:
1. Open Vivado 2018.3, click open project, search for the T5.xpr in Client_NN, then open it
2. Click file, then click Launch SDK
3. Once SDK is open, open main.c, change SRC_IP4_ADDR to the IP address of your FPGA. Ex, if your IP address is 1.1.22.2, then set ADDR to 22. If your IP address is not in the format of 1.1.ADDR.2, then go to line 75, change to your IP address
4. Change SRC_MAC_ADDR to the corresponding MAC address of your FPGA, go to line 74
5. Change DEST_IP4_ADDR to the corresponding IP address of your server FPGA with the corresponding port for DEST_PORT (Default: 7), go to lines 80 and 82
6. Open TeraTerm and connect the terminal to COM5, with a BAUD rate of 230400
7. Program the FPGA, then run with GDB configuration
8. When prompted in the TeraTerm terminal to send labels, click "File" then "Send file..." and locate the labels file ("test_labels_10k") and send it as a binary
9. When prompted in the TeraTerm terminal to send images, click "File" then "Send file..." and locate the images file ("test_images_10k") and send it as a binary

NOTE: Setup server before setting up the client.

#### To Configure Neural Network or Client System:
##### Neural Network:
1. Open Vivado 2018.3, click open project, search for the edit_NeuralNetHandWritten_v1_0.xpr in AXISHandWritten_16, then open it
2. Open the source files and make necessary changes
3. Synthesize and Implement
4. Once implemented successfully, export IP
5. Replace IP block in T5.xpr in Client_NN with the updated design
6. Follow next session to update client system

##### Client System:
1. Open Vivado 2018.3, click open project, search for the T5.xpr in Client_NN, then open it
2. Open block diagram, and make necessary changes
3. Synthesize, Implement and Generate Bitstream for new design
4. Once bitstream has been generated, click file and export hardware including bitstream
5. Click file, then click Launch SDK
6. Make any MicroBlaze software changes to client code
7. Program FPGA with new bitstream
8. Run application configuration on Client FPGA

### Server & Python Visualization:
#### To Run Out of the Box:
1. Open Vivado 2018.3, click open project, search for the T5.xpr in Server_NN, then open it
2. Click file, then click Launch SDK
3. Once SDK is open, open main.c, change ADDR to the IP address of your FPGA. Ex, if your IP address is 1.1.22.2, then set ADDR to 22. If your IP address is not in the format of 1.1.ADDR.2, then go to line 196 and line 251, change to your IP address
4. Change MAC_ADDR to the corresponding MAC address of your FPGA
5. Connect the SDK terminal or TeraTerm to COM5, with a serial speed of 9600
6. Rebuild the project, program the FPGA, then run with GDB
7. On the terminal you should see information that states the server is ready to receive data
8. Once the server is ready, disconnect the terminal, open the pyserial.py file with IDLE (or other editors), and run it, you should see on the terminal it prints out listening at COM5
9. Once data is received from the client, a plot with 10 subplots should show up

#### To Configure Server System:
1. Open Vivado 2018.3, click open project, search for the T5.xpr in Server_NN, then open it
2. Open block diagram, and make necessary changes
3. Synthesize, Implement and Generate Bitstream for new design
4. Once bitstream has been generated, click file and export hardware including bitstream
5. Click file, then click Launch SDK
6. Make any MicroBlaze software changes to server code
7. Program FPGA with new bitstream
8. Run application configuration on Server FPGA

## Repository Structure:
### src
- **AXISHandWritten_16**: Includes source code for pre-trained MNIST 784-16-10 Neural Network with corresponding Vivado 2018.3 project.
- **Client_NN**: Includes system design for client FPGA along with corresponding Vivado 2018.3 project and Vivado SDK application to run client software on MicroBlaze.
- **Server_NN**: Included system design for server FPGA along with corresponding Vivado 2018.3 project and Vivado SDK application to run server software on MicroBlaze. Also includes a pyserial.py Python3 file which is used to visualize neural network performance.
- **NN_Files**: 10k testing images and labels.

### docs
- **presentations**: Proposal, mid-project and final presentation for the project.
- **reports**: Proposal and final report for the project.
- **video**: A 2-minute video highlighting the project and how the full system works together.

## Authors:
- Yu Gao
- Zhuojun Yu
- Wales Zhou
- Amarnauth (Randy) Ewing Chow


