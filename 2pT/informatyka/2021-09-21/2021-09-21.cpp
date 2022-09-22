#include <iostream>
using namespace std;
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	setlocale(LC_CTYPE,"polish");
	
//	a) sprawdza czy liczba jest dodatnia
	int a;
	cout << "Podaj liczbê: ";
	cin >> a;
	if(a%2){
		cout << "\nLiczba jest nieparzysta";
	}else{
		cout << "\nLiczba jest parzytsa";
	}

//	b) okreœla znak liczby
	if(a<0){
		cout << " i ujemna." << endl;
	}else{
		if(a>0){
			cout << " i dodatnia.";
		}else{
			cout << " i jest zerem.";
		}
	}
	cout << endl << endl;
// c) sprawdza czy osoba jest pe³noletnia
// d) sprawdza prawa wyborcze
	unsigned int wiek;
	cout << "Podaj wiek: ";
	cin >> wiek;
	if(wiek>=18){
		cout << "\nOsoba jest pe³noletnia i ma prawa czynne";
		if(wiek>=30){
			cout << " oraz bierne";
		}
	}else{
		cout << "\nOsoba jest niepe³noletnia.";
		
	}
	
	return 0;
}
