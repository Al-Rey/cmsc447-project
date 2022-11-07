#ifndef CLIENT_CONNECTION_H
#define CLIENT_CONNECTION_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <sys/socket.h>
#include <netinet/in.h>
#include "constants.h"

using namespace std;

namespace API
{
    class ClientConnection
    {
        public:
            ClientConnection();
            ClientConnection(int new_socket);
            ~ClientConnection();
            void closeConnection();
            void sendData(string data, int bytesToSend);
            bool operator==(ClientConnection compareTo);
            bool operator!=(ClientConnection compareTo);
            int getPosition();
            int getSocket();
        private:
            int queuePosition;
            int clientSocket;
    };
}

#endif
