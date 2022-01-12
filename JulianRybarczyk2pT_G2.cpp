#include <iostream>
using namespace std;

class Car{
    private:
    string price, registration;

    public:
    string brand, model, color;
    int year;
    static int numberOfWheels;

    void setPrice(string pPrice);
    void setRegi(string pRegi);
    void showData();
    string getPrice();
    string getRegi();    

    Car(string pPrice, string pRegi, string pBrand, string pModel, string pColor, int pYear, int pNumberOfWheels);
    Car(string pBrand, string pModel, int pYear);
    Car();
    ~Car();
};

int Car::numberOfWheels = {};

Car::Car(string pPrice, string pRegi, string pBrand, string pModel, string pColor, int pYear, int pNumberOfWheels){
    price = pPrice;
    registration = pRegi;
    brand = pBrand;
    model = pModel;
    color = pColor;
    year = pYear;
    numberOfWheels = pNumberOfWheels;
    
}

Car::Car(string pBrand, string pModel, int pYear){
    brand = pBrand;
    model = pModel;
    year = pYear;
}

Car::Car(){
        cout << "Wywołano konstruktor domyślny" << endl;
}
Car::~Car(){
        cout << "Wywołano destruktor" << endl;
}

void Car::showData(){
    cout << "Marka: " << brand << endl
    << "Model: " << model << endl
    << "Kolor: " << color << endl
    << "Rok: " << year << endl
    << "Cena: " << price << endl
    << "Numer Rejestracyjny: " << registration << endl
    << "Ilość kół: " << numberOfWheels << endl;
}

void Car::setPrice(string pPrice){
    price = pPrice;
}

void Car::setRegi(string pRegi){
    registration = pRegi;
}

string Car::getPrice(){
    return price;
}

string Car::getRegi(){
    return registration;
}

int main(){
    Car fiat("2000,99zł","","Fiat","Multipla","szary",2000,4);
    
    Car *superauto;
    superauto = &fiat;

    superauto->setPrice("2000zł");

    fiat.showData();

    fiat.~Car();
    
    return 0;

}

// Przeciążanie konstruktorów polega na tworzeniu wielu konstruktorów dla jednej klasy o różnych ilościach parametrów. 
// zależnie od ilości parametrów może zostać wywołany inny konstruktor.

// przykład konstruktora domyślnego:
// Car::Car(){
//      cout << "Wywołano konstruktor domyślny" << endl;
// }

// Przykład konstrktora zwykłego dla 6 właściwości klasy:
// Car::Car(string pPrice, string pRegi, string pBrand, string pModel, string pColor, int pYear, int pNumberOfWheels){
//     price = pPrice;
//     registration = pRegi;
//     brand = pBrand;
//     model = pModel;
//     color = pColor;
//     year = pYear;
//     numberOfWheels = pNumberOfWheels;
// }

// Przykład konstrktora zwykłego dla 3 właściwości klasy:
// Car::Car(string pBrand, string pModel, int pYear){
//     brand = pBrand;
//     model = pModel;
//     year = pYear;
// }