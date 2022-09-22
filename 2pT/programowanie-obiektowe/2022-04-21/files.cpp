#include <iostream>
#include <fstream>
#include <cstdlib>
using namespace std;

int main(){
    setlocale(LC_CTYPE,"polish");

    cout << "Podaj nazwe pliku do otworzenia (lub utworzenia):\n> ";
    char fileName[256];
    cin >> fileName;

    ofstream File;
    File.open(fileName,ios::app);
    if(File.is_open()){
        string txt;
        if(fileName=="DeathFile.txt"){
            cout << "Podaj kogo chcesz usmiercic :)\n> ";
        }else{
            cout << "Podaj co chcesz dopisać:\n> ";
        }
        getline(cin, txt);
        // cin >> txt;
        File<<txt<<"\n";
        File.close();
    }else{
        cout << "Cos nie pyklo";
    }

    ifstream FileOpen(fileName);
    string line;
    if(FileOpen.is_open()){
        system("clear");
        cout << "Zawartość pliku "<<fileName<<"\n\n"; 
        
        while(getline(FileOpen, line)){
            cout << line << "\n";
        };
        FileOpen.close();
    }else{
        cout << "Cos nie pyklo";
    }
    
    

    return 0;
};