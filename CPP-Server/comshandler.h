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
}

#endif
