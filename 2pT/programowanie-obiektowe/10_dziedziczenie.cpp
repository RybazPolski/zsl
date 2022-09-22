#include <iostream>
using namespace std;

class Worker{

    public:
        string name {""}, surname {""}; // {""} to inicjacja wartoœciami pustymi

        void getData();


};

void Worker::getData(){
    cout << "Imiê: " << name << "\nNazwisko: " << surname;
};

class Teacher : public Worker { //definicja klasy dziedziczonej z dostêpem typu public

    public:
        string schoolSubject {""};

        void getData();

};

void Teacher::getData(){
    cout << "Imiê: " << name << "\nNazwisko: " << surname << "\nZajêcia: " << schoolSubject;
};

class Supervisor : public Teacher{
	public:
        string schoolClass {""};
		
        void getData();
};

void Supervisor::getData(){
    cout << "Imiê: " << name << "\nNazwisko: " << surname << "\nZajêcia: " << schoolSubject << "\nKlasa: "<< schoolClass;
};

int main(){
    setlocale(LC_CTYPE,"polish");

    Supervisor nowak;
    nowak.name = "Maksymilian";
    nowak.surname = "Nowak";
    nowak.schoolSubject = "Programowanie Obiektowe";
    nowak.schoolClass = "2xD";
	nowak.getData();

    return 0;
}
