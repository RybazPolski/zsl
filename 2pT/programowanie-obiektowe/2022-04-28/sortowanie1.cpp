#include <iostream>
using namespace std;

class Sorter{
    private:
        int* liczby = new int[0];
        int size;

    public:

        void setSize(int pSize){
            size = pSize;
            int* newLiczby = new int[size];
            liczby = newLiczby;
        
        }

        void askForLiczby(){
            system("clear");
            for(int i = 0; i<size; i++){
                cout << "Podaj " << i+1 << ". liczbę:\n> ";
                cin >> liczby[i];
                system("clear");
            }
        }
        void displayLiczby(){
            for(int i = 0; i<size; i++){
                cout << liczby[i] << endl;
            }
        }
        int* sortLiczby(){
            for(int i=0; i<size; i++){
                int min;
                int index;
                for(int j=i; j<size; j++){
                    if(j==i){
                        min = liczby[j];
                        index = j;
                    }
                    if(liczby[j]<min){
                        min = liczby[j];
                        index = j;
                    }
                    
                }
                swap(liczby[i],liczby[index]);
                
            }

            return liczby;
        }

        int* getLiczby(){
            return liczby;
        }

};

int main(){
    setlocale(LC_CTYPE,"polish");

    int size;
    cout << "Ile elementow ma miec tablica?\n> ";
    cin >> size;

    Sorter s;
    s.setSize(size);
    s.askForLiczby();
    s.displayLiczby();
    cout << "\n|\nV\n\n";
    s.sortLiczby();
    s.displayLiczby();
    

    return 0; 
}