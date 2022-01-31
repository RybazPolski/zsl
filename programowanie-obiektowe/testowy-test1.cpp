#include <iostream>
using namespace std;

class Car{
    private:
        string price;
        string registration;
    public:
        static int numberOfWheels;
        string brand, model, color;
        int year;

        void setPrice(string pPrice);

        void setRegistration(string pRegistration);

        void showData();

        string getPrice();

        string getRegistration();

        Car(string pBrand, string pModel, string pColor, int pYear, string pPrice, string pRegistration);

        Car(string pBrand, string pModel, int pYear);

        Car();

        ~Car(){
            cout << "Destruktor" << endl;
        };


};

Car::Car(string pBrand, string pModel, string pColor, int pYear, string pPrice, string pRegistration){
    brand = pBrand;
    model = pModel;
    color = pColor;
    year = pYear;
    price = pPrice;
    registration = pRegistration;
};

Car::Car(string pBrand, string pModel, int pYear){
    brand = pBrand;
    model = pModel;
    year = pYear;
};

Car::Car(){
    cout << "Konstruktor domyślny" << endl;
};

void Car::setPrice(string pPrice){
    price = pPrice;
};

void Car::setRegistration(string pRegistration){
    registration = pRegistration;
};

void Car::showData(){
    cout << "Marka: " << brand << endl
    << "Model: " << model << endl
    << "Kolor: " << color << endl
    << "Rok: " << year << endl
    << "Cena: " << price << endl
    << "Numer rejestracyjny: " << registration << endl;
};

string Car::getPrice(){
    return price;
};

string Car::getRegistration(){
    return registration;
};



int main(){

    setlocale(LC_CTYPE,"polish");

    Car fiat("Fiat","Multipla","szary",2000,"2000,99zł","");

    Car *superauto;
    superauto = &fiat;
    superauto->setPrice("2000zł");

    fiat.showData();

    fiat.~Car();

    return 0;
};

// Przeładowywanie konstruktorów polega na dodawaniu wielu kostruktorów w jednej klasie,
// przez co tworząc obiekt możemy wywołać różne konstruktory, zleżnie od tego jak utowrzymy
// instancję. Oto przykłady dla klasy Rectangle mającej właściwości sideA i sideB:
// 
// --wywołany gdy nie poda się wartości przy tworzeniu obiektu.
// Konstruktor domyślny:
// Rectangle r1(){
//     cout << "Konstruktor Domyślny";    
// }

// --wywołany gdy poda się 1 daną
// Konstruktor zwykły 1:
// Rectangle r1(float pSideA){
//     side = pSideA;    
// }

// --wywołany gdy poda się 2 danw
// Konstruktor zwykły 1:
// Rectangle r1(float pSideA, float pSideB){
//     side = pSideA;    
//     side = pSideB;    
// }
