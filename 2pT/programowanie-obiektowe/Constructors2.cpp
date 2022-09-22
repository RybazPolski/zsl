#include <iostream>
using namespace std;
 
struct Date {
	int dd, mm, yyyy;
};
 
class Car{
	public: 
		unsigned int id=10;
		string brand="testowa marka", model="testowy model", color;
		unsigned short int power;
		float price;
		Date dateOfProduction;
 
		void getData();
 
 		Car();
		Car(int pId, string pBrand, string pModel);
		Car(int pId, string pBrand);
 
 
};
 
void Car::getData(){
	cout<<"Marka: "<<brand<<", model: "<<model<<"\nKolor: "<<color
			<<"\nMoc: "<<power<<"KM\n"<<"Cena: "<<price
			<<"\nRok produkcji: "<<dateOfProduction.yyyy<<endl
			<<"Identyfikator: "<<id<<endl<<endl;
}
 
Car::Car(int pId, string pBrand, string pModel){
	id=pId;
	brand=pBrand;
	model=pModel;
}

Car::Car(int pId, string pBrand){
	id=pId;
	brand = pBrand;
} 

Car::Car(){
	id=0;
	brand="testowa marka"; 
	model="testowy model"; 
	color = "brak";
	power = 0;
	price = 0;
	dateOfProduction = {28,10,2021};
}
 
int main(int argc, char** argv) {
	setlocale(LC_CTYPE, "polish");
 
	Car fiat1(1, "Fiat", "126p");
	fiat1.getData();
	
	Car fiat2(2, "Fiat");
	fiat2.getData();
 
 	Car fiat3;
 	fiat3.getData();
 	
	return 0;
}
