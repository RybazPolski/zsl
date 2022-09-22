#include <iostream>
using namespace std;

// deklaracja struktury
struct DateBirthday{
    // deklaracja pól struktury
    unsigned short int dd, mm, yyyy;
};


// definicja klasy
class Student{
    public:
        int id {};
        string name {}, surname {};
        DateBirthday dateBirthday {};
        void showAllData();
        void setData(int id, string name, string surname, DateBirthday dateBirthday);
        void showBirthday(){
            cout << "\nData urodzenia: " << Student::dateBirthday.dd << "-" << Student::dateBirthday.mm << "-" << Student::dateBirthday.yyyy;
        }
};

void Student::showAllData(){
    cout << "ID: " << id << "\nImie i nazwisko: " << name << " " << surname;  
};

void Student::setData(int id, string name, string surname, DateBirthday dateBirthday){
    Student::id=id;
    Student::name=name;
    Student::surname=surname;
    Student::dateBirthday=dateBirthday;
};




int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Student uczen;

    uczen.setData(5, "Jan", "Kowalski", {01, 01, 2000});
    uczen.showAllData();
    uczen.showBirthday();
    return 0;
};