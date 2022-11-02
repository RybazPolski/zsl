#include <iostream>
#include <string>
#include <concepts>

using namespace std;
/*
int Pole(int a, int b){ //jeżeli mamy template, żadne nie-templatowe funkcje nie będą zauważane. 
    return a*b;
};

// szablon uogólniony
template<typename T>
T Pole(T a, T b){
    return a*b;
};

// szablon uogólniony
template<typename T, typename U>
T Pole(T a, U b){
    return a*b;
};

// szablon wyspecjalizowany
template<>                      
int Pole(int a, int b){
    return a*b + 1;
};
*/

// concept - zbiór ograniczeń dla naszego typu T
template<typename T>
//concept Numerical = is_integral_v<T>;
concept Numerical = requires(T a, T b){
    a+b;
    a-b;
    a*b;
    a/b;
};

template<Numerical T>
class Liczba{
    private:
        T a;
    public:
        Liczba(T liczba){
            a = liczba;
        };
        void show(){
            cout << "a = " << a << endl;
        };
        T podziel(T b){
            return a/b;
        }
};



int main(){
    /*
    int a=10,b=15, pole = Pole<int>(a,b); //konkretyzacja dla int (jawna)
    cout << pole << endl;
    
    float fa=10.1f,fb=15.3f, fpole = Pole<float>(fa,fb); //konkretyzacja dla float (jawna)
    cout << fpole << endl;

    cout << Pole(a,b) << endl; //konkretyzacja niejawna
    cout << Pole(fa,fb) << endl; //konkretyzacja niejawna
    
    cout << Pole(fa,b) << endl; //konkretyzacja niejawna
    cout << Pole(a,fb) << endl; //konkretyzacja niejawna

    //  ciekawostka:
    //  n - liczba dziesietna (20 = 20)
    //  0n - liczba osemkowa (020 = 16)
    //  0xn - liczba szesnastkowa (0x20 = 32)
    */

   Liczba<int> liczba = Liczba<int>(10);
   liczba.show();
   cout << "Podziel: " << liczba.podziel(2) << endl;

   Liczba<string> liczba2 = Liczba<string>("tekst");
   liczba2.show();
   cout << "Podziel: " << liczba2.podziel("dwa") << endl;

}
