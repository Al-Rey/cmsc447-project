#ifndef FIFO_H
#define FIFO_H

#include <tuple>
#include <ctime>
#include "clientconnection.h"
#include "constants.h"

namespace API
{
    class Fifo
    {
        public:
            Fifo();
            ~Fifo();
            std::tuple<ClientConnection, int> process_requests();
            int reserve_next_available(ClientConnection client);
            time_t get_current_time();
            void add_new_request(int requestedIndex, ClientConnection client, int request);
        private:
            time_t currentTime;
            time_t expiredSentinelValue;
            int currentIndex;
            int queuedRequests;
            int reservedSpots;
            int *requests[MAX_SIZE];
            ClientConnection *clients[MAX_SIZE];
            time_t reservedAt[MAX_SIZE];
            //methods
            std::tuple<ClientConnection, int> process_next_request();
            bool check_availability(int index);
            void reserve_position(int index, ClientConnection client);
            void increment_index();
            int get_next_open();
            void get_next_queued();
            bool check_if_expired(int index);
    };
}

#endif
