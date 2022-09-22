#include <iostream>
using namespace std;

class School{
    public:
    static string s_school;
    static string s_jobPosition;
    // deklaracja statycznych zmiennych członkowskich / klasowych
    // do zmiennych klasowych nie przypisujemy danych wewnątrz klasy.

    public: 
        string name;
        string surname;
        // deklaracja zmiennych instancyjnych

        void getData();
        void setNameSurname(string name, string surname);

};


string School::s_school="ZSŁ";
string School::s_jobPosition="student";

void School::getData(){
        cout << "Imię i nazwisko: " << name << " " << surname << endl << "Szkoła: " << s_school << endl << "Stanowisko: " << s_jobPosition << endl;
};


void School::setNameSurname(string name, string surname){
    School::name = name;
    School::surname = surname;
};

int main(){
    setlocale(LC_CTYPE,"polish");
    
    cout << "Szkoła: " << School::s_school << endl;
    // Można wyświetlić zmienną statyczną BEZ tworzenia obiektu
    // Wywoływanie za pomocą klasy

    School kowalski;
    kowalski.setNameSurname("Janusz","Kowalski");
    kowalski.getData();
    kowalski.s_jobPosition="analiza";
    kowalski.getData();
    // Wywoływanie za pomocą obiektu klasy 


    return 0;
};