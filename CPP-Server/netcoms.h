#ifndef NETCOMS_H
#define NETCOMS_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <sys/socket.h>
#include <netinet/in.h>
#define PORT 8080

using namespace std;

namespace API
{
    const string HOST = "127.0.0.1";
    const int BUFFER_SIZE = 1024;

    class ComsHandler
    {
        public:
            ComsHandler();
            ~ComsHandler();
            sockaddr_in startListening();
            ClientConnection listenForConnections();
            void receiveData();
        private:
            bool readyForNewClients;
            int server_fd, new_socket, valread;
            sockaddr_in listenerSocket;
            int opt;
            char buffer[BUFFER_SIZE];
            int addrlen;
            string receivePackets();

            ClientConnection acceptConnections();
            void closeConnection(ClientConnection client);
    };

    class ClientConnection
    {
        public:
            ClientConnection(int new_socket);
            ~ClientConnection();
            void closeConnection();
            void sendData(string data, int bytesToSend);
            void closeConnection();
            int getPosition();
        private:
            int queuePosition;
            int clientSocket;
    };

    class DataBufferLL
    {
        public:
            DataBufferLL();
            ~DataBufferLL();
            bool getReachedEnd();
            void addData(char new_data[BUFFER_SIZE]);
            int getLength();
            string mergeData();
        private:
            void addNext();
            DataBuffer* head;
            DataBuffer* current;
            bool reachedEnd;
    };

    class DataBuffer
    {
        public:
            DataBuffer();
            ~DataBuffer();
            bool addData(char new_data[BUFFER_SIZE]);
            void addNext();
            DataBuffer* getNext();
            int connectData(char* mergedBuffer, int currentIndex);
            int getLength();
        private:
            bool setLength();
            char bufferData[BUFFER_SIZE];
            DataBuffer* next;
            int length;
    };
}

#endif
