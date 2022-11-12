#include <iostream>
#include <ctime>
#include <unistd.h>
#include "fifo.h"
#include "top_level_handler.h"
#include "comshandler.h"
#include "clientconnection.h"
#include "bufferll.h"
#include "constants.h"
#include "tester.h"
#include <array>
#include <string.h>
#include <cstring>

using namespace std;
using namespace API;

int main()
{
  Tester tester = Tester();
  tester.testPacketMerging();
  return 0;
}
