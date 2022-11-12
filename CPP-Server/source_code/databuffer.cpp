#include "databuffer.h"

using namespace std;
using namespace API;

//Data Buffer
//Public Methods

DataBuffer::DataBuffer()
{
    length = 0;
    DataBuffer* next = NULL;
}

DataBuffer::~DataBuffer()
{
    length = 0;
    next = NULL;
}

void DataBuffer::addNext()
{
    next = new DataBuffer;
}

bool DataBuffer::addData(char new_data[BUFFER_SIZE])
{
    for (int i = 0; i < BUFFER_SIZE; i++)
    {
        bufferData[i] = new_data[i];
    }
    return this->setLength();
}

void DataBuffer::connectData(string* message)
{
    int bufferIndex = 0;
    while ((message->length() < message->capacity()) && (bufferIndex < getLength()))
    {
        message->push_back(bufferData[bufferIndex]);
        bufferIndex++;
    }
    return;
}

int DataBuffer::getLength()
{
    return length;
}

DataBuffer* DataBuffer::getNext()
{
    return next;
}

//Private Methods

bool DataBuffer::setLength()
{
    length = 0;
    while (length < API::BUFFER_SIZE)
    {
        if (bufferData[length] == '\0')
        {
            return true;
        }
        length++;
    }
    return false;
}

