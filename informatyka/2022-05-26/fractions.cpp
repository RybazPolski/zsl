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

int fraction(int a1, int a2, int b1, int b2){
    int tmp1, tmp2;

    tmp1 = a1;
    tmp2 = a2;
    a1 = a1/NWD(tmp1,tmp2);
    a2 = a2/NWD(tmp1,tmp2);

    tmp1 = b1;
    tmp2 = b2;
    b1 = b1/NWD(tmp1,tmp2);
    b2 = b2/NWD(tmp1,tmp2);

    cout << tmp1 << "\n---\n" << tmp2 << endl << endl;
    cout << a1 << "\n---\n" << a2 << endl << endl;

}

int main(){
    setlocale(LC_CTYPE,"polish");

    int a, b;

    cout << "Podaj a\n> ";
    cin >> a;
    cout << "Podaj b\n> ";
    cin >> b;
    
    fraction(a,b,0,0);


    return 0;
}