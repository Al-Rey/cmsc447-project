#include "clientconnection.h"

using namespace std;
using namespace API;

ClientConnection::ClientConnection()
{
    clientSocket = -1;
}

ClientConnection::ClientConnection(int clientSocket)
{
    this->clientSocket = clientSocket;
}

ClientConnection::~ClientConnection()
{
    closeConnection();
}

void ClientConnection::resetClient()
{
    clientSocket = -1;
    return;
}

void ClientConnection::closeConnection()
{
    //TODO: close socket
    resetClient();
}

bool ClientConnection::isEmpty()
{
    return clientSocket == -1;
}

bool ClientConnection::operator==(ClientConnection compareTo)
{
    return this->clientSocket==compareTo.getSocket();
}

bool ClientConnection::operator!=(ClientConnection compareTo)
{
    return this->clientSocket!=compareTo.getSocket();
}

int ClientConnection::getSocket()
{
    return clientSocket;
}
