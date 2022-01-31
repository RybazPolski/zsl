#include <iostream>
using namespace std;

int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");


    int i=1;
    int n;
    cout << "Podaj liczbę:\n> ";
    cin >> n;
    if(n>0){

        for(i=1; i<=n; i++){
        cout << i << "; ";
        };

        i=1;
        while (i<=n)
        {
            cout << i << "; ";
            i++;
        }

        i=1;
        do{
            cout << i << "; ";
            i++;
        }while(i<=n);
        
    }


    

};