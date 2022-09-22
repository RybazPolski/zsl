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

        Person(string pName, string pSurname){
            name=pName;
            surname = pSurname;
        }
        Person(){};

    
};


class Rorek : public Person{
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
    Rorek(string pName, string pSurname, string pWorkplace="workless"){
            name=pName;
            surname = pSurname;
            workplace = pWorkplace;
        }
        Rorek(){};
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
    Student(string pName, string pSurname, string pClass){
            name=pName;
            surname = pSurname;
            classAtSchool = pClass;
        };
    Student(){};

};

int main(){

    Rorek jan;
    jan.setName("Dominik");
    jan.setSurname("Kowalski");
    jan.setWorkplace("Reraner");
    jan.showData();

    cout << "\n\n";

    Student smarkacz;
    smarkacz.setName("Renata");
    smarkacz.setSurname("Bijatas");
    smarkacz.setClassAtSchool("0tP");
    smarkacz.showData();


    return 0;
};