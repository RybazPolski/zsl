#include <iostream>
using namespace std;

int main(){
    string tekst1, tekst2;
    cin >> tekst1 >> tekst2;
    string tekst3 = tekst1+tekst2;
    if(tekst1==tekst2){
        cout << "są takie same\n";
    }else{
        cout << "nie są takie same\n";
    }
    cout << tekst3[3]; 
};