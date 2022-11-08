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
    class ComsHandler
    {
        public:
            ComsHandler();
            ~ComsHandler();
            void receiveData();
            sockaddr_in startListening();
            int listenForConnections();
        private:
            bool readyForNewClients;
            int server_fd, client_socket, valread;
            int opt;
            int addrlen;
            char buffer[BUFFER_SIZE];
            sockaddr_in listenerSocket;
            void closeConnection(ClientConnection client);
            string receivePackets();
    };
}

#endif
