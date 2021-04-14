# Hardware Approach of Forward Propagation in Neural Network on FPGA

## Description:
Implemented a 2-layer (784-16-10) neural network built on hardware that is able to recognize handwritten digits from the MNIST dataset. Performance and accuracy of the neural netowrk will be sent from one FPGA (Client) with the nerual network IP core to another FPGA (Server) through LWIP TCP ethernet communication. This data is visualized on a PC which is connected by UART to the second FPGA.

![unnamed](https://user-images.githubusercontent.com/71918289/114693748-e9dec000-9ce7-11eb-8b89-381dd94d94c1.png)


## How to Use:
### Client with Neural Network:
1.
2.
3.

### Server & Python Visualization:
1.
2.
3.

## Repository Structure:
### src
- **AXISHandWritten_16**: Includes source code for pre-trained MNIST 784-16-10 Neural Network with corresponding Vivado 2018.3 project.
- **Client_NN**: Includes system design for client FPGA along with corresponding Vivado 2018.3 project and Vivado SDK application to run client software on MicroBlaze.
- **Server_NN**: Included system design for server FPGA along with corresponding Vivado 2018.3 project and Vivado SDK application to run server software on MicroBlaze. Also includes a pyserial.py Python3 file which is used to visualize neural network performance.

### docs
- **presentations**: Proposal, mid-project and final presenation of the project
- **reports**: Proposal and final report of the project
- **video**: A 2-minute video highlighting the project and how the full system works together

## Authours:
- Yu Gao
- Zhuojun Yu
- Wales Zhou
- Amarnauth (Randy) Ewing Chow


