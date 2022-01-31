#include <iostream>
using namespace std;

int nwd(int a, int b){
    int r;
    while (b!=0)
    {
        r = a%b;
        a = b;
        b = r;
    }
    return a;
}

int nww(int a, int b){
    return a/nwd(a,b) * b;
}

int ulamek(int a, int b){
    int r = nwd(a,b);
    cout << a/r << "\n_\n" << b/r;
}

int main(){
    int a, b;
    cout << "Podaj a:\n> ";
    cin >> a;
    cout << "Podaj b:\n> ";
    cin >> b; 

    // cout << "NWD(" << a << ", " << b << ")" << nwd(a, b) << endl;
    
    // cout << "NWW(" << a << ", " << b << ")" << nww(a,b) << endl;
    ulamek(a,b);


}