#include <iostream>
using namespace std;

struct Date {
	int dd, mm, yyyy;
};

class Car{
    public:
        unsigned int id;
        string brand, model="testowy", color;
        unsigned short int power;
        float price;
        Date dateOfProduction;

        void getData();

		Car(int pId); //utworzenie konstruktora dla jednego argumentu

		Car(string pBrand, string pModel){
            brand = pBrand;
            model = pModel;
        } //utworzenie konstruktora dla dwóch argumentów

        Car(int pId, string pBrand, string pModel, string pColor, int pPower, float pPrice, Date pDateOfProduction){
            id = pId;
            brand = pBrand;
            model = pModel;
            color = pColor;
            power = pPower;
            price = pPrice;
            dateOfProduction = pDateOfProduction;
        } //utworzenie konstruktora dla trzech argumentów


};

void Car::getData(){
	cout << "\nMarka: " << brand << "\nModel: " << model << "\nKolor: " << color << "\nMoc: " << power << "KM\nCena: " << price << "tys. z³\nRok produkcji: " << dateOfProduction.yyyy << "\nIdentyfikator:" << id << endl;
}

Car::Car(int pId){
	id=pId;
};
int main(){

	setlocale(LC_CTYPE,"polish");

	Car renaulta(10, "Renault", "Renata", "Lawendowy", 100, 15, {24,11,2005});
	renaulta.getData();

	Car fiat1("Fiat","Multipla");
	fiat1.getData();

	Car fiat2(1);
	fiat2.getData();	

	return 0;
}
