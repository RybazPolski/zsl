#include "rectangle.h"
#include <iostream>

#define SUMA(var1,var2) var1+var2
#define ARR 1000,\
2000,\
3000


int main(){
    Rectangle r;
    r.setA(10);
    r.setB(30);
    std::cout << "Pole = " << r.getArea() << std::endl;
    std::cout << "Suma = " << SUMA(r.getA(),r.getB()) << std::endl;

    int y=5, x=5, z=30;
    y = (x>5)?7:93;
    std::cout << "y = " << y << std::endl;

}