#include <iostream>
using namespace std;

class Person{
    public:
        string name, surname;
        virtual void showData();

};

class Worker : public Person{
    public:
    string workplace;

    void showData(){
        cout << "Imie i nazwisko: " << name << " " << surname << ", miejsce pracy: " << workplace << endl;
    };
};

class Student : public Person{
    public:
    string classAtSchool;

    void showData(){
        cout << "Imie i nazwisko: " << name << " " << surname << ", klasa: " << classAtSchool << endl;
    };
};

int main(){

    Worker jan;
    jan.name = "Dominik";
    jan.surname = "Nowak";
    jan.workplace = "Ataner";
    jan.showData();

    return 0;
};
