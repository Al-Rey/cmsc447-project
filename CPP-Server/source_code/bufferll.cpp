#include "bufferll.h"
#include <string>

using namespace std;
using namespace API;

//Data Buffer Linked List
//Public Methods


//Default Constructor
DataBufferLL::DataBufferLL()
{
    bool reachedEnd = false;
    head = NULL;
    current = head;
}

//Destructor
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

//Adds data to the next open buffer
void DataBufferLL::addData(char new_data[BUFFER_SIZE])
{
    addNext();
    reachedEnd = current->addData(new_data);
    if (reachedEnd)
    {
        mergeData();
    }
}

void DataBufferLL::reserveMessageSpace()
{
    int length = 0;
    DataBuffer* currentBuffer = head;
    while (currentBuffer != NULL)
    {
        length += currentBuffer->getLength();
        currentBuffer = currentBuffer->getNext();
    }
    message.reserve(length);
    return;
}

//getter to check if a null terminating char has been reached.
bool DataBufferLL::getReachedEnd()
{
    return reachedEnd;
}

string DataBufferLL::mergeData()
{
    reserveMessageSpace();
    current = head;
    while (current != NULL)
    {
        current->connectData(&message);
        current = current->getNext();
    }
    cout << message;
    return message;
}

//Private Methods
//Adds a DataBuffer onto the end of the linked list.
void DataBufferLL::addNext()
{
    if (current == NULL)
    {
        head = new DataBuffer;
        current = head;
    }
    else
    {
        current->addNext();
        current = current->getNext();
    }
    return;
}
