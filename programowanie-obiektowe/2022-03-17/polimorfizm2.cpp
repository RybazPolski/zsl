#include <iostream>
#include "Rectangle.cpp" //w moim kompilatorze dziala z uzyciem .cpp zamiast .h O_O 
using namespace std;


int main(){
    setlocale(LC_ALL,"polish");
   
    Rectangle r1;
    r1.setSides(1.0,2.0);

    return 0;
}