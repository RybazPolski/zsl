#include <iostream>

using namespace std;

class Rectangle{
    public:
        float wallA;
        float wallB;

    void field(){
        cout << "Pole wynosi: " << wallA * wallB << endl;
    };
    void circuit(){
        cout << "Obwód wynosi: " << (wallA+wallB)*2 << endl;
    };

};



int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Rectangle marcin;
    
        cout << "Podaj ścianę A: ";
        cin >> marcin.wallA;
        cout << "\nPodaj ścianę B: ";
        cin >> marcin.wallB;
        cout << endl;
        marcin.circuit();
        marcin.field();

};