#include<set>
#include <iostream>
using namespace std;
extern set<int> vec;

inline void zad2()
{
    cout << "Add item:";
    int n;
    cin >> n;
    if(!vec.count(n)){
        vec.insert(n);
    }
}