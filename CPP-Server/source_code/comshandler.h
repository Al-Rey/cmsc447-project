#ifndef COMS_HANDLER_H
#define COMS_HANDLER_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <sys/socket.h>
#include <netinet/in.h>
#include "constants.h"
#include "clientconnection.h"

using namespace std;

namespace API
{
    struct sockaddr_in
    {
        short sin_family;
        unsigned short sin_port;
        struct in_addr sin_addr;
        char sin_zero[8];
    };

    struct in_addr
    {
        unsigned long s_addr;
    };

    class ComsHandler
    {
        public:
            ComsHandler();
            ComsHandler(string os);
            ~ComsHandler();
            void receiveData();
            void startListening();
            int listenForConnections();
            int createSocket();
            void closeSocket();
            int bindSocket(int sock, const struct sockaddr *addr, socklen_t addrlen);
        private:
            bool readyForNewClients;
            int server_fd, client_socket, valread;
            int listenerSocketa;
            int opt;
            int addrlen;
            char buffer[BUFFER_SIZE];
            sockaddr_in listenerSocket;
            //int listenForConnections();
            void closeConnection(ClientConnection client);
            string receivePackets();
    };
}

#endif
