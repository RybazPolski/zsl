#include <iostream>
#include <math.h>
#include <typeinfo>
using namespace std;

string letters[36] = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};

int getLetterValue(string letter, int podstawa){
    for(int i=0; i<=35; i++){
        if(letters[i] == letter){
            if(i>podstawa-1){
                cout << "Podana liczba nie nalezy do tego systemu liczbowego.";
                exit(0);
            }else{
                return i;
            };
        };
    };
    cout << "ERROR: Podana liczba nie nalezy do tego systemu liczbowego.";
    exit(0);
};

int fromSystem(int podstawa, string n){
    int result = 0;
    string letter;
    for(int i=0; i<n.length(); i++){
            letter = n[i]; 
            result = result + getLetterValue(letter,podstawa)*pow(podstawa,n.length()-i-1);
    };
    return result;
};

string toSystem(int podstawa, int n){
    string result = "";

    for(; n>0; n=n/podstawa){
        result = letters[n%podstawa] + result;
    };
    return result;
};


int main(){   

    int podstawa1, podstawa2;
    string n;
    cout << "Z jakiego systemu chcesz zamienic liczbe?\n> ";
    cin >> podstawa1;
    cout << "Jaka chcesz zamienic liczbe?\n> ";
    cin >> n;
    cout << "Na jaki system chcesz zamienic liczbe?\n> ";
    cin >> podstawa2;
    cout << n << " zamienione z systemu " << podstawa1 <<"-kowego na system " << podstawa2 << "-kowy to " << toSystem(podstawa2, fromSystem(podstawa1,n));

    return 0;

};