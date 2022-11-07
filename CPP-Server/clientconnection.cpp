#include "clientconnection.h"

using namespace std;
using namespace API;

ClientConnection::ClientConnection(int new_socket)
{
    queuePosition = -1;
    clientSocket = new_socket;
    cout << "New client connection created\n";
}

ClientConnection::~ClientConnection()
{
    closeConnection();
    cout << "Client connection ended\n";
}

void ClientConnection::closeConnection()
{
    cout << "closing client connection\n";
}
