#include <iostream>
using namespace std;

// deklaracja struktury
struct DataBirthday{
    // deklaracja pól struktury
    unsigned short int dd, mm, rrrr;
};


// definicja klasy
class Student{
    public:
        int id {};
        string name {}, surname {};
        DataBirthday dataBirthday {};
        void showAllData();

};

void Student::showAllData(){
    cout << "ID: " << id << "\nImie i nazwisko: " << name << " " << surname;
    
};


int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Student uczen;

    cout << "Podaj datę urodzenia:\n";
    cout << "Dzień: ";
    cin >> uczen.dataBirthday.dd;
    cout << "Miesiąc: ";
    cin >> uczen.dataBirthday.mm;
    cout << "Rok: ";
    cin >> uczen.dataBirthday.rrrr;

    uczen.showAllData();
    cout << "\n\nData urodzenia: " << uczen.dataBirthday.dd << "-" << uczen.dataBirthday.mm << "-" << uczen.dataBirthday.rrrr;
    return 0;
};