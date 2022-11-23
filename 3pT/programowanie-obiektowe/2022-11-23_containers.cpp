#include <iostream>
#include <vector>
using namespace std;

int main(){
    cout << "===vec===";
    vector<int> vec;
    
    //  funkcja capacity zwraca obecną maksymalną pojemność vectoru
    cout << vec.capacity() << endl;
    
    //push_back - dodaje nowy element na końcu vectoru
    vec.push_back(1); // dopisanie liczby 1 do vectoru
    cout << vec.capacity() << endl;
    vec.push_back(3);
    cout << vec.capacity() << endl;
    vec.push_back(1);
    cout << vec.capacity() << endl;
    //gdy vector nie może pomieścić kolejnego elementu w obecnej pojemności, podwaja swoją pamięć. (0,1,2,4,8,16...)

    cout << "===vec1===";

    vector<int> vec1;
    //funkcja reserve ustawia od razu określoną pojemność dla vectoru
    vec1.reserve(5);    
    cout << vec1.capacity() << endl;
    
    vec1.push_back(1);
    vec1.push_back(3);
    vec1.push_back(10);
    vec1.push_back(321);
    cout << vec1.capacity() << endl;
    vec1.push_back(20);
    cout << vec1.capacity() << endl;

    //wykracza poza 5, więc podawaja pamięć do 10
    vec1.push_back(20);
    cout << vec1.capacity() << endl;

    // size zwraca ilość elementów vectoru
    cout << vec1.size();
    for(int i=0; i<vec1.size(); i++){
        cout << vec1[i] << ", ";
    }
    cout << endl;

    cout << vec1[8] << endl;
    // at zwróci 'std::out_of_range' jeżeli pojemność tablicy zostanie przekroczona
    cout << vec1.at(8) << endl;
    
    vec1.pop_back(); // usuwa element z końca vectoru

    if(!vec1.empty()){ //jeżeli vector !pusty
        vec1.clear();  //wyczyść wszystkie elementy vectoru
    }

    cout << vec1.size(); // wyświetla ilość elementów - 0
    cout << vec1.capacity(); // wyświetla pojemność - ta się nie zmienia, mimo że elementy vectoru zostały wyczyszczone
    


    return 0;
}