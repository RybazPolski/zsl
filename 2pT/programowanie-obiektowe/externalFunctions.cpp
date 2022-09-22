#include <iostream>
using namespace std;

class Worker{
    public:
        string name, surname;
        void getData();
};

void Worker::getData(){
    cout << "Imię i nazwisko: " << Worker::name << " " << Worker::surname << endl;
};

//& operuje na pamięci

Worker&setData(Worker&); 
Worker&getData(const Worker&);

int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Worker worker;
    worker = setData(worker);
    getData(worker); 

    return 0;  
};

// Definicja funkcji zewnętrzych