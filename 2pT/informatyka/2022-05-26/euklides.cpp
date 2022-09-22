#include <iostream>
using namespace std;

int NWD(int a, int b){
    int temp;
    if(b>a){
        temp = b;
        b = a;
        a = temp;
    }
    while(b!=0){
        temp = b;
        b = a%b;
        a = temp;
    }
    return a;
}

int NWW(int a, int b){
    return (a*b)/NWD(a,b);
}


int main(){
    setlocale(LC_CTYPE,"polish");

    int a, b;

    cout << "Podaj a\n> ";
    cin >> a;
    cout << "Podaj b\n> ";
    cin >> b;
    
    cout << "NWD(" << a << "," << b << ") = " << NWD(a,b) << endl;
    cout << "NWW(" << a << "," << b << ") = " << NWW(a,b) << endl;  
    

    return 0;
}