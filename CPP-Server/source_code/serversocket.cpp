#include "serversocket.h"
#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>

using namespace std;
using namespace API;

ServerSocket::ServerSocket()
{
    fileDescriptor = socket(AF_INET, SOCK_STREAM, 0);
    if (fileDescriptor == 0)
    {
        cout << "could not create socket, exiting with error code\n";
        exit(EXIT_FAILURE);
    }
    initializeAddress();
    listenForConnections();
}

ServerSocket::~ServerSocket()
{
    cout << "destructing ServerSocket";
}

void ServerSocket::initializeAddress()
{
    memset((char *)&socketAddress, 0, sizeof(socketAddress)); 
    socketAddress.sin_family = AF_INET; 
    socketAddress.sin_addr.s_addr = htonl(INADDR_ANY); 
    socketAddress.sin_port = htons(PORT);
    if (bind(fileDescriptor, (struct sockaddr *)&socketAddress, sizeof(socketAddress)) < 0)
    {
        cout << "could not bind socket, exiting with error code\n";
        exit(EXIT_FAILURE);        
    }
    addrlen = sizeof(socketAddress);
}

void ServerSocket::listenForConnections()
{
    if (listen(fileDescriptor, API::MAX_CLIENTS) < 0)
    {
        cout << "could not listen for clients, exiting with error code\n";
        exit(EXIT_FAILURE);        
    }
}

ClientConnection ServerSocket::acceptConnections()
{
    cout << "listening for new connections\n";
    int newConnection = accept(fileDescriptor, (struct sockaddr *)&socketAddress, (socklen_t*)&addrlen);
    if (newConnection < 0)
    {
        cout << "could not connect to client, exiting with error code\n";
        exit(EXIT_FAILURE);
    }
    cout << "new client connection created\n";
    return ClientConnection(newConnection);
}

void ServerSocket::closeConnection(ClientConnection* client)
{
    cout << "closed connection\n";
    client->closeConnection();
}