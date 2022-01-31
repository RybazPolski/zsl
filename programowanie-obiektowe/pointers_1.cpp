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

int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Worker *p_worker; // Zmienna wskaźnikowa
    p_worker = new Worker; // Utworzenie obiektu przy pomocy wskaźnika

    p_worker -> name = "Janusz";
    p_worker -> surname = "Nowak";
    p_worker -> getData();

    delete p_worker; // Usunięcie wskaźnika

    p_worker -> getData(); // Stwarza błąd; Wskaźnik już nie istnieje.

    return 0;  
};