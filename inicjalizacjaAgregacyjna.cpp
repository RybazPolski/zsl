#include <iostream>
using namespace std;
 
class Car{
	public: 
		unsigned int id;
		string brand;
		string model;
 
		void getData(); 
 
 
};

void Car::getData(){
	cout << "\nID: " << id <<endl << "Marka: " << brand << endl << "Model: " << model << endl;	
}

int main(int argc, char** argv) {
	setlocale(LC_CTYPE, "polish");

	Car fiat{0};
	fiat.getData(); 	
	
	Car fiat1{1, "Fiat"};
	fiat1.getData(); 	
	
	Car fiat2{2, "Fiat", "126p"};
	fiat2.getData(); 	
	return 0;
}
