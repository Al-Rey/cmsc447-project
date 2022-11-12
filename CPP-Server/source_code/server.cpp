#include <iostream>
#include <ctime>
#include <unistd.h>
#include "fifo.h"
#include "top_level_handler.h"
#include "comshandler.h"
#include "clientconnection.h"
#include "bufferll.h"
#include "constants.h"
#include <array>
#include <string.h>
#include <cstring>

using namespace std;
using namespace API;

int main()
{
  cout << "receiving test data...\n";
  string testMessage = "That's great, it starts with an earthquake Birds and snakes, and aeroplanes And Lenny Bruce is not afraid Eye of a hurricane, listen to yourself churn World serves its own needs, Don't mis-serve your own needs";
  DataBufferLL bufll = DataBufferLL();
  char data[API::BUFFER_SIZE];
  int i = 0;
  int j = 0;
  int k = 0;
  while (i < testMessage.length())
  {
    data[j] = testMessage.at(i);
    i++;
    j++;
    if (j >= API::BUFFER_SIZE)
    {
      j = 0;
      k++;
      cout << data;
      bufll.addData(data);
    }
  }
  data[j] = '\0';
  k++;
  cout << data << "\nmerging: " << k << " message fragments, with a max size of: " << API::BUFFER_SIZE << ".\n";
  bufll.addData(data);

  //cout << '\n' << bufll.getLength();
  //ClientConnection client = ClientConnection();
  //ClientConnection client2 = ClientConnection();
  //TopLevelHandler server = TopLevelHandler();
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
