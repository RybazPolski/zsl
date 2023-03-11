//deklaracje klasy rectangle
#define RECTANGLE_H
class Figure{
    public:
    virtual float getArea() {return 0;};
    virtual float getPerimiter() {return 0;};
};

class Rectangle : public Figure{
    float a, b;
    public:
    Rectangle();
    Rectangle(float, float);
    float getA();    
    float getB();
    void setA(float);    
    void setB(float);    
    float getArea();
    float getPerimeter();
};

class Triangle : public Figure{
    float a, b, c;
    public:
    float getA();    
    float getB();
    float getC();
    void setA(); 
    void setB(); 
    void setC(); 
};

