#include <iostream>
using namespace std;

class School{
    public:
        static string s_school;
        static string s_jobPosition;
        // deklaracja statycznych zmiennych członkowskich / klasowych
        // do zmiennych klasowych nie przypisujemy danych wewnątrz klasy.
        static string s_getSchool();
        static void s_setSchool(string pSchool){
            s_school=pSchool;
        };


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

string School::s_getSchool(){
    return s_school;
}

int main(){
    setlocale(LC_CTYPE,"polish");
    
    cout << School::s_getSchool() << endl;
    School::s_setSchool("CDV");
    cout << School::s_getSchool() << endl;


    return 0;
};