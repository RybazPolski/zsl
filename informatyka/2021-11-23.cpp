#include <iostream>
using namespace std;
double pi = 3.14; 

// string framer(string str){
//     int res = str.length();
//     return res;
// };

double askDouble(string str){
    cout << str;
    double input;
    cin >> input;
    return input;
};

double pole(double r){
    return pi*r*r;
};

double obwod(double r){
    return 2*pi*r;
};

double wycinek(double r, double a){
    return a/2*r*r;
}

int main(){
    setlocale(LC_CTYPE,"polish");

    double r = askDouble("Podaj promień koła:\n> ");
    double a = askDouble("Podaj kąt wycinka kołowego:\n> ");
    
    cout << "Obwód wynosi: " << obwod(r) << endl;
    cout << "Pole wynosi: " << pole(r) << endl;
    cout << "Wycinek kołowy wynosi: " << wycinek(r, a) << endl;

    return 0;
};