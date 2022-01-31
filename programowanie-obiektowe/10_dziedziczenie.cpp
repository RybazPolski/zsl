#include <iostream>
using namespace std;

class Worker{

    public:
        string name {""}, surname {""}; // {""} to inicjacja warto�ciami pustymi

        void getData();


};

void Worker::getData(){
    cout << "Imi�: " << name << "\nNazwisko: " << surname;
};

class Teacher : public Worker { //definicja klasy dziedziczonej z dost�pem typu public

    public:
        string schoolSubject {""};

        void getData();

};

void Teacher::getData(){
    cout << "Imi�: " << name << "\nNazwisko: " << surname << "\nZaj�cia: " << schoolSubject;
};

class Supervisor : public Teacher{
	public:
        string schoolClass {""};
		
        void getData();
};

void Supervisor::getData(){
    cout << "Imi�: " << name << "\nNazwisko: " << surname << "\nZaj�cia: " << schoolSubject << "\nKlasa: "<< schoolClass;
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
