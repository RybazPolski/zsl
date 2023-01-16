#include <iostream>
using namespace std;

enum Gender {M=0, F=1};

class Person {
    public:
        string firstName, lastName;
        int age;
        Gender gender;
};

int main(){

    Person p;
    p.firstName = "John";
}