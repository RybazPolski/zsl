#ifndef RECTANGLE_H
#define RECTANGLE_H
#include "Figure.h"

// #pragma once

class Rectangle
{
    private:
        double sideA, sideB;
public:
        Rectangle();
        ~Rectangle();
        double getSides();
        void setSides(double pSideA,double pSideB){
            sideA = pSideA;    
            sideB = pSideB;    
        };
        double calculateArea();
        double calculateCircuit();
        void showAreaCircuit();
    protected:
        double area,circuit;
};

#endif