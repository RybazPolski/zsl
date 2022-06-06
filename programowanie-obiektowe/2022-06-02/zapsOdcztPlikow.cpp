#include <iostream>
#include <fstream>
using namespace std;

int main(){
    fstream file;
    file.open("plik.txt",ios::out);
    int tab[10];
    for(int i=0; i<10;i++){
        tab[i] = i+1;
    }

    string text = "Janusz Kowalski";
    int age = 20;
    double area = 10.5;
    if(file){
        cout << "Zapis danych do pliku\n";

        file << text << endl;
        file << "Wiek: " << age << endl;
        file << "Pole: " << area << endl;

        for(int i=0; i<10;i++){
            file << tab[i];
            if( i < 9){
                file << ", ";
            }
        }
        file << endl;

        file.close();
    }else{
        cout << "Otwarcie pliku nie powiodlo się";
    }

    return 0;
}