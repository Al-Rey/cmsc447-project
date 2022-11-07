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
            ClientConnection(int new_socket);
            ~ClientConnection();
            void closeConnection();
            void sendData(string data, int bytesToSend);
            int getPosition();
        private:
            int queuePosition;
            int clientSocket;
    };
}

#endif
