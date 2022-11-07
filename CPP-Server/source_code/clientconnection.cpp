#include "clientconnection.h"

using namespace std;
using namespace API;

ClientConnection::ClientConnection()
{
    queuePosition = -1;
    clientSocket = -1;
    cout << "New client connection created\n";    
}

ClientConnection::ClientConnection(int new_socket)
{
    queuePosition = -1;
    clientSocket = new_socket;
    cout << "New client connection created\n";
}

ClientConnection::~ClientConnection()
{
    closeConnection();
    cout << "Client connection ended\n";
}

void ClientConnection::closeConnection()
{
    cout << "closing client connection\n";
}

bool ClientConnection::operator==(ClientConnection compareTo)
{
    return (this->queuePosition==compareTo.getPosition() && this->clientSocket==compareTo.getSocket());
}

bool ClientConnection::operator!=(ClientConnection compareTo)
{
    return (this->queuePosition!=compareTo.getPosition() || this->clientSocket!=compareTo.getSocket());
}

int ClientConnection::getPosition()
{
    return queuePosition;
}

int ClientConnection::getSocket()
{
    return clientSocket;
}
