#include <iostream>
using namespace std;

class Worker{
    private:
        string name, surname;
        float salary;
    public:
        void setSurname(string pSurname){
            surname = pSurname;
        };
        string getSurname(){
            return surname;
        };
        void setName(string pName){
            name = pName;
        };
        string getName(){
            return name;
        };
        void setSalary(float pSalary){
            salary = pSalary;
        };
        float getSalary(){
            return salary;
        };
};

class Teacher : public Worker{
    private: 
        string subject;
    public:
        void setSubject(string pSubject){
            subject = pSubject;
        };
        string getSubject(){
            return subject;
        };

        void showData(){
            cout << "Imie: " << getName() << "\nNazwisko: " << getSurname() << "\nWyplata: " << getSalary() << "\nPrzedmiot: " << subject << endl;
        };

        void insertData(){
            cout << "==========\nNauczyciel\n==========\n";
            string x;
            string y;
            float z;
            cout << "Podaj imie:\n> ";
            cin >> x;
            setName(x);
            cout << "Podaj nazwisko:\n> ";
            cin >> y;
            setSurname(y);
            cout << "Podaj wyplate:\n> ";
            cin >> z;
            setSalary(z);
            cout << "Podaj przedmiot ktorego uczy:\n> ";
            cin >> subject;

            cout << "\n";
            showData();
            cout << "\n";
        };
        Teacher(){
            insertData();
        };
};

class Supervisor : public Teacher{
    private: 
        string classId;
    public:
        void setClassId(string pClassId){
            classId = pClassId;
        };
        string getClassId(){
            return classId;
        };
        void showData(){
            cout << "Imie: " << getName() << "\nNazwisko: " << getSurname() << "\nWyplata: " << getSalary() << "\nPrzedmiot: " << getSubject() << "\nKlasa:" << classId << endl;
        };

        void insertData(){
            cout << "==========\nWychowawca\n==========\n";
            string w;
            string x;
            string y;
            float z;
            cout << "Podaj imie:\n> ";
            cin >> x;
            setName(x);
            cout << "Podaj nazwisko:\n> ";
            cin >> y;
            setSurname(y);
            cout << "Podaj wyplate:\n> ";
            cin >> z;
            setSalary(z);
            cout << "Podaj przedmiot ktorego uczy:\n> ";
            cin >> w;
            setSubject(w);
            cout << "Podaj klase wychowawcza:\n> ";
            cin >> classId;
            cout << "\n";
            showData();
            cout << "\n";
        };
        Supervisor(){
            insertData();
        };
};

class Principle : public Worker{
    private:
        string school;
    public:
        void setSchool(string pSchool){
            school = pSchool;
        };
        string getSchool(){
            return school;
        };
        void showData(){
            cout << "Imie: " << getName() << "\nNazwisko: " << getSurname() << "\nWyplata: " << getSalary() << "\nSzkola: " << school << endl;
        };

        void insertData(){
            cout << "=======\nDyrektor\n=======\n";
            string x;
            string y;
            float z;
            cout << "Podaj imie:\n> ";
            cin >> x;
            setName(x);
            cout << "Podaj nazwisko:\n> ";
            cin >> y;
            setSurname(y);
            cout << "Podaj wyplate:\n> ";
            cin >> z;
            setSalary(z);
            cout << "Podaj szkole w ktorej pracuje:\n> ";
            cin >> school;

            cout << "\n";
            showData();
            cout << "\n";
        };
        Principle(){
            insertData();
        };
};

class Secretary : public Worker{
    private:
        string room;
    public:
        void setRoom(string pRoom){
            room = pRoom;
        };
        string getRoom(){
            return room;
        };
        void showData(){
            cout << "Imie: " << getName() << "\nNazwisko: " << getSurname() << "\nWyplata: " << getSalary() << "\nPokoj sekretariatu: " << room << endl;
        };

        void insertData(){
            cout << "==========\nSekretarka\n==========\n";
            string x;
            string y;
            float z;
            cout << "Podaj imie:\n> ";
            cin >> x;
            setName(x);
            cout << "Podaj nazwisko:\n> ";
            cin >> y;
            setSurname(y);
            cout << "Podaj wyplate:\n> ";
            cin >> z;
            setSalary(z);
            cout << "Podaj pokoj sekretariatu:\n> ";
            cin >> room;

            cout << "\n";
            showData();
            cout << "\n";
        };
        Secretary(){
            insertData();
        };
};



int main(){
    setlocale(LC_CTYPE,"polish");

    Teacher szyper;
    // Supervisor kowalski;
    // Principle nowak;
    // Secretary bozenka;

    cout << endl;
    system("pause");
    return 0;
};