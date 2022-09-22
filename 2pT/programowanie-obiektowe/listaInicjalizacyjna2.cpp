#include <iostream>
using namespace std;
 
class Car{
	public: 
		unsigned int id;
		string brand;
		string model;
 
		void getData(); 
 
 		Car();
		Car(unsigned int pId, string pBrand, string pModel);
 
};

void Car::getData(){
	cout << "ID: " << id <<endl << "Marka: " << brand << endl << "Model: " << model << endl << endl;	
}

Car::Car():
	id{0}, brand{"NAZWISKO"}, model{"IMIÊ"}
{
	cout << "Konstruktor domyœlny\n";
};

Car::Car(unsigned int pId, string pBrand, string pModel):
	id{pId}, brand{pBrand}, model{pModel}
{
	cout << "Konstruktor parametryczny\n";
};

int main(int argc, char** argv) {
	setlocale(LC_CTYPE, "polish");

	Car brumbrum(1,"Renault","Renata");
	brumbrum.getData();

	return 0;
}
