#include <iostream>
using namespace std;
 
class Car{
	public: 
		unsigned int id;
		string brand;
		string model;
 
		void getData(); 
 
 		Car();
 
};

void Car::getData(){
	cout << "ID: " << id <<endl << "Marka: " << brand << endl << "Model: " << model << endl << endl;	
}

Car::Car():
	id{0}, brand{"NAZWISKO"}, model{"IMIÊ"}
{}

int main(int argc, char** argv) {
	setlocale(LC_CTYPE, "polish");

	Car brumbrum;
	brumbrum.getData();

	return 0;
}
