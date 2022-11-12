#ifndef TOP_LEVEL_HANDLER_H
#define TOP_LEVEL_HANDLER_H

#include "fifo.h"
#include "comshandler.h"
#include "bufferll.h"
#include "constants.h"

using namespace std;

namespace API
{
    class TopLevelHandler
    {
        public:
            TopLevelHandler();
            TopLevelHandler(ComsHandler comsHandler, Fifo fifoQueue);
            ~TopLevelHandler();
            void checkOpSys();
            
        private:
            string opSys;
            ComsHandler coms;
            Fifo queue;
    };
}

#endif