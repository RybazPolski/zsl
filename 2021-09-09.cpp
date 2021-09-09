#include <iostream>

using namespace std;

class Worker{
	public:
		string name;
		string surname;
		string nationality="Polska";

// definicja metody showName
		void showName(){
			cout << "Twoje imię: " << name << endl;
		};

// definicja (prototyp) metody showSurname
		void showSurname();

// definicja (prototyp) metody showSurname
		void showAllData();


};

// definicja metody showSurname
	void Worker::showSurname(){
		cout << "test Metody" << endl;
	};

	void Worker::showAllData(){
		cout << "Imię i nazwisko: " + name + " " + surname << endl;
		cout << "Narodowość: " + nationality << endl;

	}

int main(int argc, char** argv){
	setlocale(LC_CTYPE,"polish");
	
	Worker pracownik;
	pracownik.name="Krystyna";
	pracownik.surname="Czubówna";
	cout << "Narodowość: " << pracownik.nationality << endl;
	pracownik.nationality = "USA";
	cout << "Narodowość: " << pracownik.nationality << endl;
	pracownik.showName();
	pracownik.showSurname();
	pracownik.showAllData();

	
	return 0;
}