#ifndef SERVER_SOCKET_H
#define SERVER_SOCKET_H

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string.h>
#include "constants.h"
#include "clientconnection.h"
#include <sys/socket.h>
#include <netinet/in.h>

using namespace std;

namespace API
{
    class ServerSocket
    {
        public:
            ServerSocket();
            ~ServerSocket();
            ClientConnection acceptConnections();
            void closeConnection(ClientConnection* client);
            void sendData(ClientConnection* client, string message);

        private:
            int fileDescriptor;
            struct sockaddr_in socketAddress;
            int addrlen;
            void initializeAddress();
            void listenForConnections();
    };
}

#endif