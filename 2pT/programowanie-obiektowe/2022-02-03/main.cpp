#include <iostream>
using namespace std;

class Worker{


    string name{""}, surname{""};
  
  public:
    Worker(){
      cout << "Konstruktor domyslny klasy Worker\n\n";
      name = "Bezimienny";
      surname = "Nienazwany";
    };

    Worker(string pName, string pSurname){
      name=pName;
      surname=pSurname;
      cout << "Konstruktor parametryczny klasy Worker\n\n";
    }
  
    string showData(){
      return "Imie i nazwisko: " + name + " " + surname + "\n\n";
    }
    string getName(){
      return name;
    }
    string getSurame(){
      return surname;
    }
    void setName(string pName){
      name = pName;
    }
    void setSurname(string pSurname){
      surname = pSurname;
    }
};

class Teacher: public Worker{
  
    string subjectInSchool;

  public:

    string getSubjectInSchool(){
      return subjectInSchool;
    }

    Teacher(){
      cout << "Konstruktor domyslny klasy Teacher\n\n";
      setName("Bezimienny");
      setSurname("Nienazwany");
      subjectInSchool = "Brak";
    };
    
    Teacher(string pName, string pSurname, string pSubjectInSchool){
      setName(pName);
      setSurname(pSurname);
      subjectInSchool=pSubjectInSchool;
      cout << "Konstruktor parametryczny klasy Teacher\n\n";
    }

    Teacher(string pName, string pSurname): Worker(pName, pSurname){
      cout<<"Konstruktor parametryczny z okresleniem konstruktora klasy bazowej\n\n";
    }

    string showData(){
      return "Imie i nazwisko: " + getName() + " " + getSurame() + ",zaj�cia: " + getSubjectInSchool() + "\n\n";
    }
};

int main()
{

    Teacher nauczyciel2;
    cout<<nauczyciel2.showData();

    return 0;
}
/*

1. Sprawia że klasa może zostać zadeklarowana na podstawie innej klasy przyjmując jej właściwości
2. Klasa bazowa to klasa na której podstawie tworzona jest klasa pochodna która będzie miała właściwości klasy bazowej rozszerzone o indywidualne właściwości
3. Zestaw klas powiązanycg ze sobą relacją dziedziczenia
4. Publiczne, prywatne, chronione (public, private, protected)
5. Wielokrotne - gdy klasa pochodna dziedziczy z więcej niż jednej klasy bazowej
Hierarchiczne - gdy klasa bazowa ma wiele klas pochodnych
6. Nie dziedziczy, jednakże wywołanie konstruktora klasy pochodnej wywołuje również konstruktor klasy bazowej.


*/