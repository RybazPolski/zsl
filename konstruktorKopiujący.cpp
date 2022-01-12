#include <iostream>
using namespace std;

//konstruktor kopiuj¹cy - konstruktor przeci¹¿ony

class Rectangle{
	private:
		double sideA;
		double sideB;
	public:
		Rectangle();
		Rectangle(double sideA, double sideB);
		Rectangle(const Rectangle &);
		
		void catchSides(double&, double&);
		void setSides(double, double);
		void getSides();
		double area();
		double circuit();
};

Rectangle::Rectangle(){
	cout << "Konstruktor domyœlny"<<endl;
}

Rectangle::Rectangle(double pSideA, double pSideB){
	sideA = pSideA;
	sideB = pSideB;
	cout << "Konstruktor parametryczny"<<endl;
}

Rectangle::Rectangle(const Rectangle& model){
	sideA=model.sideA;
	sideB=model.sideB;
	cout << "Konstruktor kopiuj¹cy"<<endl;
}

void Rectangle::catchSides(double &pSideA, double &pSideB){
	pSideA=sideA;
	pSideB=sideB;	
}

void Rectangle::setSides(double pSideA, double pSideB){
	sideA=pSideA;
	sideB=pSideB;
}

void Rectangle::getSides(){
	cout << "Boki prostok¹ta:\n\tBok a: "<<sideA<<"\n\tBok b: "<<sideB << endl;
}

double Rectangle::area(){
	return sideA*sideB;
}

double Rectangle::circuit(){
	return (2*sideA)+(2*sideB);
}

Rectangle copyRectangle(Rectangle rectangle){
	return rectangle;
}

int main(int argc, char** argv) {
	setlocale(LC_CTYPE, "polish");

	double a, b;
	cout << "Pierwszy prostok¹t"<<endl;
	Rectangle rec1(2, 4);
	rec1.catchSides(a,b);
	rec1.getSides();

	cout << "\n\n";

	cout << "Drugi prostok¹t"<<endl;
	Rectangle rec2=rec1;
	rec2.getSides();
	rec2.catchSides(a,b);
	
	cout << "\n\n";

	cout << "Trzeci prostok¹t"<<endl;
	Rectangle rec3(rec1);
	rec3.getSides();
	rec3.catchSides(a,b);

	cout << "\n\n";

	cout << "Drugi prostok¹t"<<endl;
	Rectangle rec4;
	rec4=copyRectangle(rec1);
	rec4.getSides();
	rec4.catchSides(a,b);
	
	return 0;
}
