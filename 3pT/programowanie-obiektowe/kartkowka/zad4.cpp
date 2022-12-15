#include<set>
#include <iostream>
using namespace std;
extern set<int> vec;

inline void zad4()
{
    for( auto iter = vec.rbegin(); iter != vec.rend(); ++iter )
        cout << *iter << ' ';
    cout << endl;
}