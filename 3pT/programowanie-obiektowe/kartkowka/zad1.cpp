#include<set>
#include <iostream>
using namespace std;
extern set<int> vec;
extern int dane[9];

inline void zad1()
{
    vec.insert(dane,dane+9);
}