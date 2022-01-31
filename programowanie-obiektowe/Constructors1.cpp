#include <iostream>
using namespace std;

struct Date {
	int dd, mm, yyyy;
};

class Car{
    public:
        unsigned int id=1;
        string brand="testowa marka", model="testowy", color;
        unsigned short int power;
        float price;
        Date dateOfProduction;

        void getData();

        Car(int pId, string pBrand, string pMoel);


};

void Car::getData(){
	cout << "\nMarka: " << brand << "\nModel: " << model << "\nKolor: " << color << "\nMoc: " << power << "KM\nCena: " << price << "tys. z³\nRok produkcji: " << dateOfProduction.yyyy << "\nIdentyfikator:" << id << endl;
}

Car::Car(int pId, string pBrand="MARKA", string pModel="MODEL"){
    id = pId;
	brand = pBrand;
    model = pModel;
}
int main(){

	setlocale(LC_CTYPE,"polish");

	Car renaulta(10);
	renaulta.getData();

	return 0;
}
