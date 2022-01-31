#include <iostream>
#include <cmath>    
using namespace std;

int fibo(int n){
    if(n<=2){
        return 1;
    }else{
        return fibo(n-1)+fibo(n-2);
    }
};

int a(int n){
    if(n<=1){
        return 2;
    }else{
        return a(n-1)*3;
    }
}

int b(int n){
    if(n<=1){
        return -3;
    }else{
        return b(n-1)*-1;
    }
}

int c(int n){
    if(n<=1){
        return 2;
    }else{
        return c(n-1)+3;
    }
}

// Tego jeszcze nie zrobiłem, bo utknąłem na zadaniu b) bo nie usłyszałem że mamy zrobić je inną metodą :(
int d(int n){
    if(n<=1){
        return 2;
    }else{
        return c(n-1)+3;
    }
}

int main(){

    cout << d(1) << endl;
    cout << d(2) << endl;
    cout << d(3) << endl;
    cout << d(4) << endl;
    return 0;
}