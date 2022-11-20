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
    close(clientSocket);
    resetClient();
}

string ClientConnection::receiveDataFromClient()
{
    char* nextBuffer[API::BUFFER_SIZE];
    cout << recv(this->clientSocket, nextBuffer, API::BUFFER_SIZE, MSG_PEEK);
    for (int i = 0; i < API::BUFFER_SIZE; i++)
    {
        cout << *nextBuffer[i];
    }
    send(this->clientSocket, *nextBuffer, API::BUFFER_SIZE, 0);
    //readv(clientSocket, nextBuffer, API::BUFFER_SIZE);
    /*for (int i = 0; i < API::BUFFER_SIZE; i++)
    {
        cout << *nextBuffer[i];
    }
    while (!checkIfBufferIsDone())
    {
        cout << "receiving data from client socket: " << clientSocket << "\n";
        char* nextBuffer[API::BUFFER_SIZE];
        recv(clientSocket, nextBuffer, API::BUFFER_SIZE, MSG_PEEK);
        for (int i = 0; i < API::BUFFER_SIZE; i++)
        {
            cout << *nextBuffer[i];
        }
        cout << "\n";
        messageBuffer.addData(*nextBuffer);
    }
    return messageBuffer.getMessage();*/
    return "success.\n";
}

bool ClientConnection::checkIfBufferIsDone()
{
    return messageBuffer.getReachedEnd();
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
