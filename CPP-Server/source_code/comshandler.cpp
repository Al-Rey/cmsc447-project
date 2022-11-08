#include "comshandler.h"

using namespace std;
using namespace API;

//Communications Handler
//Public Methods

ComsHandler::ComsHandler()
{
    cout << "instantiating ComsHandler.\n";
    startListening();
    readyForNewClients = false;
}

ComsHandler::~ComsHandler()
{
    cout << "destructing ComsHandler.\n";
}

void ComsHandler::receiveData()
{
    valread = -1;
    while (valread == -1)
    {
        cout << "waiting for message from client...\n";
        valread = recv(client_socket, &buffer, BUFFER_SIZE, MSG_WAITALL);
        sleep(1);
    }
    cout << buffer << "\n";
    //TODO: connect this function to DataBufferLL's addData and mergeDatamethod's
    //to allow messages of varying sizes to be received and processed.
    return;
}

sockaddr_in ComsHandler::startListening()
{
    struct sockaddr_in listener;
    opt = 1;
    addrlen = sizeof(listener);
    buffer[API::BUFFER_SIZE] = {0};
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        perror("failed to create listener socket");
        exit(EXIT_FAILURE);
    }

    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) 
    { 
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    }
    listener.sin_family = AF_INET; 
    listener.sin_addr.s_addr = INADDR_ANY; 
    listener.sin_port = htons(PORT);
    if (bind(server_fd, (struct sockaddr *)&listener, sizeof(listener))<0) 
    { 
        perror("bind failed"); 
        exit(EXIT_FAILURE); 
    }
    if (listen(server_fd, 3) < 0) 
    { 
        perror("listen"); 
        exit(EXIT_FAILURE); 
    }
    return listener;
}

int ComsHandler::listenForConnections()
{
    if ((client_socket = accept(server_fd, (struct sockaddr *) &listenerSocket, (socklen_t*)&addrlen))<0) 
    {
        perror("accept"); 
        exit(EXIT_FAILURE); 
    }
    return client_socket;
}

//Private Methods

void ComsHandler::closeConnection(ClientConnection client)
{

}

string ComsHandler::receivePackets()
{
    return "placeholder";
}
