#include <iostream>
using namespace std;

int silnia(int n){

    if(!n) return 1;
    return n*silnia(n-1);
};

float a(float n){

    if(n==1) return 4;
    return  4 + a(n-1)+3;
};

float b(float n){

    if(n==1) return 2;
    return a(n-1)*2;
};

int main(){

    cout << b(3) << endl;
    
    return 0;
};