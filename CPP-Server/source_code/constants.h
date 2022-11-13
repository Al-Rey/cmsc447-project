#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>

using namespace std;

namespace API
{
    const string HOST = "127.0.0.1";
    const int PORT = 8080;
    const int BUFFER_SIZE = 6;
    const int MAX_SIZE = 50;
    const int MAX_CLIENTS = 50;
    const float MAX_SLEEP_TIME = 0.25;
    const float MIN_SLEEP_TIME = 0.00;
    const double RES_INTERVAL = 2;
}

#endif
