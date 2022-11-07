#include "netcoms.h"


using namespace std;
using namespace API;

ComsHandler::ComsHandler()
{
    listenerSocket = startListening();
    readyForNewClients = false;
}

ComsHandler::~ComsHandler()
{
    cout << "destructing ComsHandler\n";
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
    if ((new_socket = accept(server_fd, (struct sockaddr *) &listener, (socklen_t*)&addrlen))<0) 
    { 
        perror("accept"); 
        exit(EXIT_FAILURE); 
    }
    return listener;
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

DataBufferLL::DataBufferLL()
{
    bool reachedEnd = false;
    head = new DataBuffer();
    current = head;
}

DataBufferLL::~DataBufferLL()
{
    DataBuffer* lastVisited = head;
    while (head != NULL)
    {
        head = head->getNext();
        delete lastVisited;
        lastVisited = head;
    }
    head = NULL;
    current = NULL;
    lastVisited = NULL;
    return;
}

void DataBufferLL::addData(char new_data[BUFFER_SIZE])
{
    addNext();
    reachedEnd = current->addData(new_data);
}

string DataBufferLL::mergeData()
{
    int length = getLength();
    char message[length];
    int currentIndex = 0;
    current = head;
    while (currentIndex < length)
    {
        currentIndex = current->connectData(&message[currentIndex], currentIndex);
        if (current->getNext() != NULL)
        {
            current = current->getNext();
        }
    }
    string messageString = message;
    return messageString;
}

DataBuffer::DataBuffer()
{
    length = 0;
    DataBuffer* next = NULL;
}

int DataBuffer::connectData(char* mergedBuffer, int currentIndex)
{
    for (int i = 0; i < length; i++, mergedBuffer++)
    {
        *mergedBuffer = bufferData[i];
    }
    return currentIndex += length;
}

int DataBuffer::getLength()
{
    return length;
}

bool DataBuffer::setLength()
{
    length = 0;
    while (length < BUFFER_SIZE && bufferData[length] != '\0')
    {
        length++;
        if (bufferData[length] == '\0')
        {
            return true;
        }
    }
    return false;
}

bool DataBuffer::addData(char new_data[BUFFER_SIZE])
{
    for (int i = 0; i < BUFFER_SIZE; i++)
    {
        bufferData[i] = new_data[i];
    }
    return setLength();
}

void DataBuffer::addNext()
{
    next = new DataBuffer;
}

DataBuffer* DataBuffer::getNext()
{
    return next;
}

void DataBufferLL::addNext()
{
    if (current == NULL)
    {
        current = new DataBuffer;
    }
    else
    {
        current->addNext();
        current = current->getNext();
    }
    return;
}

bool DataBufferLL::getReachedEnd()
{
    return reachedEnd;
}