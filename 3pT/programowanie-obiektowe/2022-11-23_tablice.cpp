#include <iostream>
using namespace std;

int main(){
    int liczby[4];
    int liczby2[4] = {1,2,3,4};

    cout << liczby2[2] << endl;
    cout << liczby2[4] << endl;

    int * pnt = liczby2;
    cout << pnt << endl;
    cout << liczby2 << endl;
    cout << &liczby2[0] << endl;
    cout << pnt + 1 << endl;
    cout << *(pnt + 2) << endl;
    cout << pnt[0] << endl;

    int * tab = new int[4];
    int x (10);
    tab = &x;
    delete tab;


    return 0;
}