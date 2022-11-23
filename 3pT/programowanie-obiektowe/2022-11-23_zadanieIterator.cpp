#include <iostream>
#include <vector>
using namespace std;

int main(){
    
    int dane[15] = {1,2,3,4,5,7,8,11,99,101,342,123,2137,23,256};

    vector<int> vec;
    vec.reserve(15);
    vec.insert(vec.begin(),dane,dane+15);
    for(auto i = vec.begin(); i!=vec.end(); i++){
        if(*i%2==0){
            vec.erase(i--);
        }
    };
    for(auto i = vec.begin(); i!=vec.end(); i++){
        cout << *i << ", ";
    };
    cout << endl;


    return 0;
}