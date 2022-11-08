#include "top_level_handler.h"

//using namespace std;
using namespace API;

TopLevelHandler::TopLevelHandler()
{
    coms = ComsHandler();
    queue = Fifo();
    cout << "Instantiating new TopLevelHandler using default constructor.\n";
    return;
}

TopLevelHandler::TopLevelHandler(ComsHandler comsHandler, Fifo fifoQueue)
{
    coms = comsHandler;
    queue = fifoQueue;
    cout << "Instantiating new TopLevelHandler using constructor with arguments.\n";
    return;
}

TopLevelHandler::~TopLevelHandler()
{
    
    cout << "Destructing TopLevelHandler of C++ server.\n";
}