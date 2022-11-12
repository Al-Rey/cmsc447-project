#ifndef DATA_BUFFER_H
#define DATA_BUFFER_H

#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include "constants.h"

using namespace std;

namespace API
{
    class DataBuffer
    {
        public:
            DataBuffer();
            ~DataBuffer();
            void addNext();
            bool addData(char new_data[BUFFER_SIZE]);
            void connectData(string* message);
            int getLength();
            DataBuffer* getNext();
        private:
            bool setLength();
            char bufferData[BUFFER_SIZE];
            int length;
            DataBuffer* next;
    };
}

#endif
