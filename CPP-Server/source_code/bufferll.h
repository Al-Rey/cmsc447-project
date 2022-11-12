#ifndef BUFFER_LL_H
#define BUFFER_LL_H

#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include "constants.h"
#include "databuffer.h"

using namespace std;

namespace API
{
    class DataBufferLL
    {
        public:
            DataBufferLL();
            ~DataBufferLL();
            void addData(char new_data[BUFFER_SIZE]);
            bool getReachedEnd();
            string mergeData();
            string getMessage();
        private:
            void reserveMessageSpace();
            string message;
            void addNext();
            bool reachedEnd;
            DataBuffer* head;
            DataBuffer* current;
    };
}

#endif
