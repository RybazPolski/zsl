#include <iostream>
using namespace std;

class Worker{
    public: 
        string name, surname;
        void setData(int name, int surname);  
        void getData();  
};

void Worker::setData(int name, int surname){
    Worker::name = name;
    Worker::surname = surname;
};

void Worker::getData(){
    cout << "Imię: " << Worker::name << "\nNazwisko: " << Worker::surname << endl;
}

int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Worker kowalski;
    kowalski.name = "Janusz";
    kowalski.surname = "Kowalski";

    Worker *p_kowalski; // Utworzenie pointera (wskaźnika)
    cout << p_kowalski << endl; 

    p_kowalski = &kowalski; // Pobranie hexadecymalnego adresu wskazanego obiektu 
    cout << p_kowalski << endl; 
 
    p_kowalski->getData(); // Użycie metody dla obiektu wskazanego przez pointer (wskaźnik)

};