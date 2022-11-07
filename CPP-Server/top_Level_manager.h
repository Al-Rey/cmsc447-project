#ifndef TOP_LEVEL_MANAGER_H
#define TOP_LEVEL_MANAGER_H

#include "fifo.h"

using namespace std;

namespace API
{
    class TopLevelManager
    {
        public:
            TopLevelManager(Fifo fifo);
        private:
            Fifo queue;

    };
}

#endif