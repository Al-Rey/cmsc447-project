#include <iostream>
#include <chrono>
#include <unistd.h>
#include "fifo.h"


using namespace std;
using namespace API;

Fifo::Fifo()
{
    time(&expiredSentinelValue);
    time(&currentTime);
    currentIndex = 0;
    queuedRequests = 0;
    reservedSpots = 0;
    *requests = new int [API::MAX_SIZE];
    *clients = new ClientConnection [API::MAX_SIZE];
    for (int i = 0; i < API::MAX_SIZE; i++)
    {
        requests[i] = NULL;
    }
    std::fill_n(reservedAt, API::MAX_SIZE, expiredSentinelValue);
    sleep(API::RES_INTERVAL);
}

Fifo::~Fifo()
{
    for (int i = 0; i < MAX_SIZE; i++)
    {
        delete requests[i];
        delete clients[i];
    }
}

//Reserves positions in queue
int Fifo::reserve_next_available(ClientConnection client)
{
    int reserveIndex = get_next_open();
    if (reserveIndex != -1)
    {
        reserve_position(reserveIndex, client);
        return reserveIndex;
    }
    //occurs if the queue is full
    return -1;
}

int Fifo::get_next_open()
{
    if (queuedRequests + reservedSpots < API::MAX_SIZE)
    {
        int startingIndex = currentIndex;
        for (int offset = 0; offset < API::MAX_SIZE; offset++)
        {
            int nowChecking = (startingIndex + offset) % API::MAX_SIZE;
            if (check_availability(nowChecking))
            {
                cout << "open spot found at index: " << nowChecking << ". ";
                return nowChecking;
            }
        }
    }
    cout << "No spots available.\n";
    return -1;
}

bool Fifo::check_availability(int index)
{
    if ((requests[index] == NULL) && (clients[index] == NULL) && (check_if_expired(index)))
    {
        return true;
    }
    return false;
}

bool Fifo::check_if_expired(int index)
{
    return difftime(time(NULL), reservedAt[index]) >= API::RES_INTERVAL;
}

void Fifo::reserve_position(int index, ClientConnection client)
{
    time(&reservedAt[index]);
    //clients[index] = new ClientConnection;
    *clients[index] = client;
    reservedSpots++;
    return;
}

//Takes in requests for reserved positions
void Fifo::add_new_request(int requestedIndex, ClientConnection client, int request)
{
    //checks that requested index in proper range.
    if (requestedIndex >= 0 && requestedIndex < API::MAX_SIZE)
    {
        //checks that request came from matching client. prevents client impersonation.
        if ((*clients[requestedIndex] == client) && (requests[requestedIndex] == NULL))
        {
            requests[requestedIndex] = new int; 
            *requests[requestedIndex] = request;
            reservedAt[requestedIndex] = expiredSentinelValue;
            reservedSpots--;
            queuedRequests++;
        }
    }
    return;
}

//Processes queued requests.
std::tuple<ClientConnection, int> Fifo::process_requests()
{
    if (queuedRequests > 0)
    {
        return process_next_request();
    }
    return tuple<ClientConnection, int>(NULL, NULL);
}

std::tuple<ClientConnection, int> Fifo::process_next_request()
{
    get_next_queued();
    tuple<ClientConnection, int> clientRequest = tuple<ClientConnection, int>(*clients[currentIndex], *requests[currentIndex]);
    delete requests[currentIndex];
    delete clients[currentIndex];
    requests[currentIndex] = NULL;
    clients[currentIndex] = NULL;
    queuedRequests--;
    return clientRequest;
}

void Fifo::get_next_queued()
{
    while (requests[currentIndex] == NULL)
    {
        increment_index();
    }
    return;
}

void Fifo::increment_index()
{
    currentIndex++;
    if (currentIndex >= API::MAX_SIZE)
    {
        currentIndex = 0;
    }
    return;
}

time_t Fifo::get_current_time()
{
    time(&currentTime);
    return currentTime;
}