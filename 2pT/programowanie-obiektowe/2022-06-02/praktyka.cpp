#include <iostream>
#include <fstream>
using namespace std;

struct student
{
    string name,surname;
    int journalNo;
    double avgGrade;
};


int main(){
    
    student uczniowie[3];
    for(int i=0; i<3;i++){
        cout << "Podaj imie "<<i+1<<". ucznia:\n> ";
        cin >> uczniowie[i].name;
        cout << "Podaj nazwisko "<<i+1<<". ucznia:\n> ";
        cin >> uczniowie[i].surname;
        cout << "Podaj nr w dzienniku dla "<<i+1<<". ucznia:\n> ";
        cin >> uczniowie[i].journalNo;
        cout << "Podaj srednia "<<i+1<<". ucznia:\n> ";
        cin >> uczniowie[i].avgGrade;
    }
    
    fstream file;
    file.open("students.txt",ios::out);
    if(file){
        cout << "Zapis danych do pliku\n";

        for(int i=0; i<3;i++){
            file << uczniowie[i].journalNo << ". " << uczniowie[i].name << " " << uczniowie[i].surname << " Ocena: " << uczniowie[i].avgGrade << endl;
        }
        file << endl;

        file.close();
    }else{
        cout << "Otwarcie pliku nie powiodlo się";
    }

    return 0;
}