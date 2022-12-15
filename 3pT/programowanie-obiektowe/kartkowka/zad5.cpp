#include<set>
#include <iostream>
using namespace std;
extern set<int> vec;

inline void zad5()
{
    cout << "Delete all items? (y/n)";
    char yn;
    cin >> yn;
    if(yn == 'y'){
        vec.clear();
    }
}