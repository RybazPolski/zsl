#include <iostream>
#include <cmath>
#include 
using namespace std;

void zamiana(int *x, int *y){
    *x=20;
    *y=30;
}


int main(){
    // int x, y;
    // x=10;
    // y=5;
    // cout << "x=" << x << endl;
    // cout << "y=" << y << endl;
    // zamiana(&x,&y);
    // cout << "x=" << x << endl;
    // cout << "y=" << y << endl;

    // zadanie: Zaprojektuj klasę, która pozwoli wyznaczyć pole powierzchni trójkąta, oraz jego obwód; 
    Triangle t1(3,4,5);
    cout << "Obwod: " << t1.getPerimeter() << endl;
    cout << "Pole: " << t1.getArea() << endl;

    return 0;
}