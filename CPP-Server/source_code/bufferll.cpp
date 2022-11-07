#include "bufferll.h"

using namespace std;
using namespace API;

//Data Buffer Linked List
//Public Methods

DataBufferLL::DataBufferLL()
{
    bool reachedEnd = false;
    head = NULL;
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

bool DataBufferLL::getReachedEnd()
{
    return reachedEnd;
}

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