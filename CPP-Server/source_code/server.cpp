#include <iostream>
#include <ctime>
#include <unistd.h>
#include "fifo.h"
#include "top_level_handler.h"
#include "comshandler.h"
#include "clientconnection.h"

using namespace std;
using namespace API;

int main()
{
  //ClientConnection client = ClientConnection();
  //ClientConnection client2 = ClientConnection();
  TopLevelHandler server = TopLevelHandler();
  //ComsHandler coms = ComsHandler();
  //Fifo f = Fifo();
  return 0;
/*  int reservedIndices[API::MAX_SIZE];
  Fifo testQueue = Fifo();
  cout << "reserving queue spots\n";
  for (int i = 0; i < API::MAX_SIZE; i++)
  {
    //requestIndices[i] = requestedIndex;
    reservedIndices[i] = testQueue.reserve_next_available(i);
  }

  cout << "adding new requests\n\n";
  for (int j = 0; j < API::MAX_SIZE; j++)
  {
    testQueue.add_new_request(reservedIndices[j], j, j+50);
  } 
  cout << "\nprocessing\n";
  tuple<int, int> lastReq = tuple<int, int>(NULL, NULL);
  int count = -1;
  do
  {
    lastReq = testQueue.process_requests();
    cout << "client: " << std::get<0>(lastReq) << ", Request body: " << std::get<1>(lastReq) << "\n";
    count++;
  }
  while (lastReq != tuple<int, int> (NULL, NULL));
  cout << "processed " << count << " requests.\n";
  return 0;*/
}
