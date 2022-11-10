#include "bufferll.h"

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
}

//getter to check if a null terminating char has been reached.
bool DataBufferLL::getReachedEnd()
{
    return reachedEnd;
}

//getter to calculate the total length of all DataBuffers.
int DataBufferLL::getLength()
{
    int length = 0;
    DataBuffer* currentBuffer = head;
    while (currentBuffer != NULL)
    {
        length += currentBuffer->getLength();
    }
    return length;
}

//combines all data from all the dataBuffers into a single string.
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

//Private Methods

//Adds a DataBuffer onto the end of the linked list.
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
