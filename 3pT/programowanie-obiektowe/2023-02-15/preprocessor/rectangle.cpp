#include "rectangle.h"

Rectangle::Rectangle(){};
Rectangle::Rectangle(float a, float b){
    this->a=a;
    this->b=b;
};

void Rectangle::setA(float a){
    this->a=a;
};

void Rectangle::setB(float b){
    this->b=b;
};

float Rectangle::getA(){
    return this->a;
};

float Rectangle::getB(){
    return this->b;
};

float Rectangle::getArea(){
    return this->getA()*this->getB();
};