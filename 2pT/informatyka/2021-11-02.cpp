#include <iostream>
using namespace std;

int main(){
    setlocale(LC_CTYPE,"polish");
    
    unsigned int a;
    cout << "Podaj liczbę:\n> ";
    cin >> a;
    string liczba="pierwszą";

    for(int i=2; i<a; i++){
        if(a%i==0){
            liczba = "złożoną";
        };
    };

        cout << a << " jest liczbą " << liczba << endl;

}