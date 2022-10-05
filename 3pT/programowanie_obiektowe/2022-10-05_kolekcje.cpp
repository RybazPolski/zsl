#include <iostream>
using namespace std;

template<class T>
class List{
    private:
        T** _pointers;
        int _count;
        int _capacity;
    public:
        void Add(T & item){ // dodawanie nowego elementu
            // T & item powoduje, ze odnosimy sie bezposrednio do zmiennej podanej na wejsciu
            // & to referencja, czyli odwolanie bezposrednio do zmiennej a nie jej kopii
            
            if(_count < _capacity){
                _pointers[_count] = &item;
                _count++;
            };
        }; 
        void Remove(T & item){ // usuwanie elementu
            
            for(int i=0;i<_count;i++){
                if(&item == _pointers[i]){
                    RemoveAt(i);
                    return;
                }
            }
        };
        void RemoveAt(int index){ // usuwanie elementu na zadanej pozycji
            if(index < _count && _count > 0){

                for(int i=index; i<_count-1; i++)
                {
                    _pointers[i] = _pointers[i+1];
                }

                _count--;
            };
        };
        int Count(){ // ilosc elementow
            return _count;
        };
        int Capacity(){ // pojemnosc kolekcji
            return _capacity;
        };
        bool Contains(T & item){ // sprawdza czy dany obiekt znajduje sie w kolekcji
            for(int i=0; i<_count; i++){
                if(&item == _pointers[i]){
                    return true;
                }
            }
            return false;
        };
        void ShowItems(){
            cout << "Zawartosc kolekcji: " << endl;
            for(int i=0;i<_count;i++){
                // cout << i+1 << ". " << _pointers[i] << endl;
                cout << i+1 << ". " << *_pointers[i] << endl;
                // * przed wskaznikiem - wyciagniecie wartosci
            }
        }

    List():List(10){};

    List(int pCapacity): _capacity(pCapacity), _count(0){
        _pointers = new T*[_capacity];
    };

    T& operator[](int index){
        if(index < _count){
            return *_pointers[index];
        }else{
            cout << "blad! Przekroczono zakres kolekcji" << endl;
        }
    }

};

int main(){
    
    int a=10,b=20,c=30,d=40,e=50;

    List<int> lista = List<int>();
    // lista.Add(a);
    // lista.ShowItems();
    // a=15;
    // lista.ShowItems();
    // cout << "Capacity: " << lista.Capacity() << " Count: " << lista.Count() << endl;
    // cout << lista.Contains(a) << endl;
    // cout << lista.Contains(b) << endl;
    // cout << lista.Contains(c) << endl;
    // cout << lista.Contains(d) << endl;

    lista.Add(a);
    lista.Add(b);
    lista.Add(c);
    lista.Add(d);
    lista.ShowItems();
    // lista.Remove(c);
    lista.RemoveAt(0);
    lista.ShowItems();
    cout << lista[1];


};