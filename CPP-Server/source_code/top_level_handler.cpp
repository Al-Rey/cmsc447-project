#include "top_level_handler.h"

//using namespace std;
using namespace API;

TopLevelHandler::TopLevelHandler()
{
    coms = ComsHandler();
    queue = Fifo();
    return;
}

TopLevelHandler::TopLevelHandler(ComsHandler comsHandler, Fifo fifoQueue)
{
    coms = comsHandler;
    queue = fifoQueue;
    return;
}

TopLevelHandler::~TopLevelHandler(){ }