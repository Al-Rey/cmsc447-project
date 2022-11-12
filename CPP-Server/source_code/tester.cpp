#include "tester.h"

using namespace std;
using namespace API;

Tester::Tester()
{
    cout << "\nconstructing tester...\n";
}

Tester::~Tester()
{
    cout << "\ndestructing tester...\n";
}

void Tester::testResult(bool testres, string testName)
{
    if (testres == true)
    {
        cout << "\n" << testName << " Passed.\n";
    }
    else
    {
        cout << "\n" << testName << " Failed.\n";
        EXIT_FAILURE;
    }
}

void Tester::testPacketMerging(string testmsg)
{
    cout << "Now testing packet merging...\n";
    cout << "receiving test data...\n";
    if (testmsg == "")
    {
        testmsg = "That's great, it starts with an earthquake Birds and snakes, and aeroplanes And Lenny Bruce is not afraid Eye of a hurricane, listen to yourself churn World serves its own needs, Don't mis-serve your own needs";
    }
    DataBufferLL bufll = DataBufferLL();
    char data[API::BUFFER_SIZE];
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < testmsg.length())
    {
        data[j] = testmsg.at(i);
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
    testResult(bufll.getMessage()==testmsg, __func__);
}