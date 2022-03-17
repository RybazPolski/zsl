#include <iostream>
using namespace std;

class Console{
    public:
    void log(string msg){
        cout << msg;
    };
};

int main(){
    setlocale(LC_ALL,"polish");
    Console console;
    console.log("Hello world!");

    return 0;
}