#include <iostream>
using namespace std;

class Person{
    protected:
        string name, surname;
    public:
        virtual void showData() = 0;
        void setName(string pName){
            name = pName;
        }
        string getName(){
            return name;
        }

        void setSurname(string pSurname){
            surname = pSurname;
        }
        string getSurname(){
            return surname;
        }


};

class Worker : public Person{
    protected:
    string workplace;

    public:
    void showData(){
        cout << "Imie i nazwisko: " << name << " " << surname << ", miejsce pracy: " << workplace << endl;
    };

    string getWorkplace(){
        return workplace;
    }
    void setWorkplace(string pWorkplace){
        workplace = pWorkplace;
    };
};

class Student : public Person{
    protected:
        string classAtSchool;
    public:
    void showData(){
        cout << "Imie i nazwisko: " << name << " " << surname << ", klasa: " << classAtSchool << endl;
    };

    string getClassAtSchool(){
        return classAtSchool;
    }
    void setClassAtSchool(string pClass){
        classAtSchool = pClass;
    };

};

int main(){

    Worker jan;
    jan.setName("Dominik");
    jan.setSurname("Kowalski");
    jan.setWorkplace("Ataner");
    jan.showData();

    cout << "\n\n";

    Student smarkacz;
    smarkacz.setName("Renata");
    smarkacz.setSurname("Bijatas");
    smarkacz.setClassAtSchool("0tP");
    smarkacz.showData();


    return 0;
};