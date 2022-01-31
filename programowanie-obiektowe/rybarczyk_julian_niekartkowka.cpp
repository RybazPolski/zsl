#include <iostream>
using namespace std;

class Car{
    private:
        string brand;
        string model;
        string color;
        int year;
        string price;

    public:
        void showData();
        
        Car(string pBrand, string pModel, string pColor, int pYear, string pPrice);
        Car(string pBrand, string pModel, int pYear);
        Car();

        ~Car();
};

Car::Car(string pBrand, string pModel, string pColor, int pYear, string pPrice){
    brand = pBrand;
    model = pModel;
    color = pColor;
    year = pYear;
    price = pPrice;
};

Car::Car(string pBrand, string pModel, int pYear){
    brand = pBrand;
    model = pModel;
    year = pYear;
};

Car::Car(){
    cout << "\nKonstruktor domyślny\n";
};

Car::~Car(){
    cout << "\nDestruktor\n";
};

void Car::showData(){
    cout << "Marka: "<<brand<<endl;
    cout << "Model: "<<model<<endl;
    cout << "Kolor: "<<color<<endl;
    cout << "Rok produkcji: "<<year<<endl;
    cout << "Cena: "<<price<<endl;

};

void createObject(){
    Car *newObject = new Car();
};


int main(){

    Car fiat("Fiat", "Multipla","szary",2000,"2000,99zł");

    Car *autko = &fiat;
    fiat.showData();
    delete autko;


    return 0;
};
