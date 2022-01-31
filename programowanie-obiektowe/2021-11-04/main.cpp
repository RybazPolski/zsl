#include <iostream>
#include <cmath>
#define M_PI 3.14159265358979323846

using namespace std;

class Roller{
//	private:
	public:
		double h, r;
		Roller();
		Roller(double r, double h);
		
		void setDimensions(double pR, double pH);
		void getDimensions();
		double baseArea();
		double sideArea();
		double fullArea();
		double volume();
};

Roller::Roller(){
	cout << "Konstruktor domyœlny" << endl;
};
Roller::Roller(double pR, double pH){
	r = pR;
	h = pH;
	cout << "Konstruktor parametryczny"  << endl;
};

void Roller::setDimensions(double pR, double pH){
	r = pR;
	h = pH;
};

void Roller::getDimensions(){
	cout << "\tPromieñ: \t\t\t" << r << " cm\n";
	cout << "\tWysokoœæ: \t\t\t" << h << " cm2\n";
	cout << "\tPole podstawy: \t\t\t" << this->baseArea() << " cm2\n"; 
	cout << "\tPole powierzchni bocznej: \t" << this->sideArea() << " cm2\n"; 
	cout << "\tPole powierzchni ca³kowitej: \t" << this->fullArea() << " cm2\n"; 
	cout << "\tObjêtoœæ: \t\t\t" << this->volume() << " cm3\n"; 
}

double Roller::baseArea(){
	return M_PI*pow(r,2);
}

double Roller::sideArea(){
	return 2*M_PI*r*h;
}

double Roller::fullArea(){
	return 2*this->baseArea()+this->sideArea();
}

double Roller::volume(){
	return this->baseArea()*this->h;
}

int main(int argc, char** argv) {
	setlocale(LC_CTYPE,"polish");
	
	Roller rick(3,5);
	rick.getDimensions();
	
	cout << endl;
	
	Roller coaster;
	coaster.r=3;
	coaster.h=7;
	coaster.getDimensions();
	
	return 0;
}
