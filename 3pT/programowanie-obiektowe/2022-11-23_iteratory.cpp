#include <iostream>
#include <vector>
using namespace std;

int main(){
    
    int dane[10] = {1,2,3,4,5,7,8,11,99,101};

    vector<int> vec;
    vec.reserve(10);
    for(int i = 0; i<10; i++){
        vec.push_back(dane[i]);
    }


    for(int i = 0; i<10; i++){
        cout << vec.at(i) << ", ";
    }
    cout << endl;


    //iterator pozwala przeskakiwać pomiędzy elementami kontenera (vector to rodzaj kontenera)
    vector<int>::iterator it;
//               ^typ     ^nazwa zmiennej
    it = vec.begin(); //sprawia, że iterator wskazuje na początek kolekcji
    cout << *it << endl; //zwróci element z początku kolekcji

    it = vec.end(); //sprawia, że iterator wskazuje na pierwszy bajt ZA kolekcją



    //iteracja z użyciem iteratora
    for(vector<int>::iterator i = vec.begin(); i!=vec.end(); i++){ //iterator na początek kolekcji; powtarzaj aż iterator nie znajdzie się poza kolekcją; zwiększ iterator o 1;
        cout << *i << ", ";
    }
    cout << endl;

    //możemy również użyć `auto` zamiast całego `vector<int>::iterator` 
    for(auto i = vec.begin(); i!=vec.end(); i++){ 
        cout << *i << ", ";
    }
    cout << endl;


    //rbegin iterator wsteczny (reverse) - po zwiększeniu (i++) iteratora, zmienia się on w niższy element. rend() to oczywiście element przed początkiem kolekcji.
    for(auto i = vec.rbegin(); i!=vec.rend(); i++){ 
        cout << *i << ", ";
    }
    cout << endl;


    //insert wstawia element na daną pozycję, a resztę elementów przesuwa w prawo (lub w lewo gdy poda się iterator wsteczny)
    // można też wstawić do vectora całą tablicę, podająć iterator, tablicę i adres końcowy (pierwszy za tablicą)
    vector<int> vec1;
    int dane1[10] = {1,2,3,4,5,7,8,11,99,101};
    vec1.insert(vec1.begin(),dane1,dane1+10);

    vec.erase(vec.end()-3); //usunięcie 2 elementu od końca

    for(auto i = vec.rbegin(); i!=vec.rend(); i++){ 
        cout << *i << ", ";
    }
    cout << endl;

    return 0;
}