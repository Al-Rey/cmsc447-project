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
    return setLength();
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

DataBuffer* DataBuffer::getNext()
{
    return next;
}

//Private Methods

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

