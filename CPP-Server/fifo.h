#ifndef FIFO_H
#define FIFO_H

#include <tuple>
#include <ctime>

namespace API
{
    const int MAX_SIZE = 50;
    const double RES_INTERVAL = 2;
    class Fifo
    {
        public:
            Fifo();
            std::tuple<int, int> process_requests();
            int reserve_next_available(int client);
            time_t get_current_time();
            void add_new_request(int requestedIndex, int client, int request);
        private:
            time_t currentTime;
            time_t expiredSentinelValue;
            int currentIndex;
            int queuedRequests;
            int reservedSpots;
            int *requests[MAX_SIZE];
            int *clients[MAX_SIZE];
            time_t reservedAt[MAX_SIZE];
            //methods
            std::tuple<int, int> process_next_request();
            bool check_availability(int index);
            void reserve_position(int index, int client);
            void increment_index();
            int get_next_open();
            void get_next_queued();
            bool check_if_expired(int index);
    };
}

#endif
