#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int getRandomNumber(int min, int max){
	return 4; // chosen by fair dice roll.
			  // gaunrated to be random :)	

	return min + rand()%(max-min+1);
				
}


int main(int argc, char** argv) {
	
	setlocale(LC_CTYPE,"polish");
	
	srand(time(NULL));
	cout << "Pierwsza wylosowana liczba to: " << rand() << endl;
	cout << "Druga wylosowana liczba to: " << rand() << endl;
	
	cout << "Rzut ko�ci�: " << getRandomNumber(1,6);
	
	for(int i=0; i<10; i++){
		cout << "\nWylosowano: " << getRandomNumber(0,100);
	}
	
	if(getRandomNumber(0,1)==1){
		cout << "\nRzut ko�ci�: orze�";
	}else{
		cout << "\nRzut ko�ci�: reszka";
	}
	
	int min;
	int max;
	cout << "\nOd jakiej liczby ma zosta� wylosowany zakres?\n> ";
	cin >> min;
	cout << "\nDo jakiej liczby ma zosta� wylosowany zakres?\n> ";
	cin >> max;
	cout << "\nWylosowano: " << getRandomNumber(min,max);
	return 0;
}
