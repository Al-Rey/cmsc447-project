#ifndef TESTER_H
#define TESTER_H

#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include "constants.h"
#include "databuffer.h"
#include "bufferll.h"
#include "fifo.h"
#include "comshandler.h"
#include "clientconnection.h"

using namespace std;

namespace API
{
    class Tester
    {
        public:
            Tester();
            ~Tester();
            void testResult(bool testres, string testName);
            void testPacketMerging(string testmsg = "");
    };
}

#endif
