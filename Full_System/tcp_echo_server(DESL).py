# Example of multi-client echo server

import socket
import _thread

HOST = '1.1.19.1' # The IP address of the computer this script runs on
PORT = 7 # The port used by this TCP server 

def open_new_client(connection, addr):
    print("Connected to client ", addr[0], " port ", addr[1])

    # Loop until connection closed
    while True:
        # Read data
        data = connection.recv(1024)

        # Check if read unsuccessful 
        if not data: break

        # Send data back to sender (echo)
        connection.send(data)
        print("Received", repr(data))

    # Close the connection if break from loop
    connection.shutdown(1)
    connection.close()
    print("Connection to client ", addr[0], " port ", addr[1], " closed")

def listen():
    # Setup the socket
    connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    connection.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

    # Bind to an address and port to listen on
    connection.bind((HOST, PORT))
    connection.listen(10)
    print("Server opened on ",HOST," port ", PORT)

    # Loop forever, accepting all connections in new thread
    while True:
        new_conn, new_addr = connection.accept()
        _thread.start_new_thread(open_new_client,(new_conn, new_addr))

if __name__ == "__main__":
    try:
        listen()
    except KeyboardInterrupt:
        pass
