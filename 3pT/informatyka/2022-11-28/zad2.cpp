#include <iostream>
#include <cstdlib>
#include <time.h>
using namespace std;

int main(){
    srand(time(NULL));
    int dlugosc;
    cin >> dlugosc;
    string tab = "abcdefghijklmnopqrstuvwxyz";
    string haslo = "";
    for(int i=0; i<dlugosc; i++){
        haslo = haslo + tab[rand()%26];
    }
    cout << haslo << endl;

}