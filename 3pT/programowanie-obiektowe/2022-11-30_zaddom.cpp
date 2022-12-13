#include <iostream>
#include <vector>
using namespace std;

struct Uczen
{
    string imie, nazwisko;
    int wiek;
};

class Klasa{
    protected:
    vector<Uczen> uczniowie;
    
    public:
    
    Uczen getUczenByID(int ID){
        return uczniowie[ID];
    };
    int Count(){
        return uczniowie.size();
    };
    void addUczen(Uczen uczen){
        uczniowie.push_back(uczen);
    };
    void removeUczenByID(int ID){
        uczniowie.erase(uczniowie.begin()+ID-1);
    };
    void spisUczniow(){
        for(vector<Uczen>::iterator i = uczniowie.begin(); i!=uczniowie.end(); i++){ 
            cout << i-uczniowie.begin()+1 << ". " << i->imie << " " << i->nazwisko << endl;
        }
    };
    Klasa(){};
    Klasa(int size){
        this->uczniowie.reserve(size);  
    }
};

int main(){
    setlocale(LC_ALL,"polish");
    Klasa _3pT(10);
    cout << "Ilosc uczniow: " << _3pT.Count() << endl;
    _3pT.spisUczniow();
    _3pT.addUczen({"Jan","Nowak",17});
    _3pT.addUczen({"Maks","Janowicz",16});
    _3pT.spisUczniow();
    cout << "Ilosc uczniow: " << _3pT.Count() << endl;
    _3pT.removeUczenByID(1);
    _3pT.spisUczniow();
    cout << "Ilosc uczniow: " << _3pT.Count() << endl;

    return 0;
}