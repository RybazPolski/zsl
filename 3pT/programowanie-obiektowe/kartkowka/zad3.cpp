#include<set>
#include <iostream>
using namespace std;
extern set<int> vec;

inline void zad3()
{
    for( auto iter = vec.begin(); iter != vec.end(); ++iter )
        cout << *iter << ' ';
    cout << endl;
}