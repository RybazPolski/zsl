#include <iostream>
using namespace std;

class Animal{
    public:
        void className(){
            cout << "Klasa Animal\n";
        };
        virtual void speak(){
            cout << "Dźwięk zwierzęcia\n";
        };
};

class Doge : public Animal{
    public:
        void className(){
            cout << "Klasa Doge\n";
        }
        void speak(){
            cout << "HauHau!!!\n";
        };
};

int main(){
    setlocale(LC_ALL,"polish");
   

    return 0;
}