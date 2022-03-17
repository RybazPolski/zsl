#ifndef FIHURE_H
#define FIHURE_H

class Figure{
    public:
        Figure();
        ~Figure();
        void getSides();
        void setSides();
        double calculateArea();
        double calculateCircuit();
        void showAreaCircuit();
    protected:
        double area,circuit;
    private:
};
#endif //FIGURE_H