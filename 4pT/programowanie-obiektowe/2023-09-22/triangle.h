class Triangle{
    private:
    float a=0, b=0, c=0;

    public:
    float getA(){
        return a;
    };
    void setA(float a){
        this->a=a;
    };
    float getB(){
        return b;
    };
    void setB(float b){
        this->b=b;
    };
    float getC(){
        return c;
    };
    void setC(float c){
        this->c=c;
    };

    bool canExist(){
        return (this->a+this->b > this->c) && (this->a+this->c > this->b) && (this->c+this->b > this->a);
    };

    float getArea(){
        if(this->canExist()){
            float p = getPerimeter()*0.5;
            return sqrt((p*(p - this->a)*(p - this->b)*(p - this->c)));
        }else{
            cout << "Podany trojkat nie ma prawa bytu!" << endl;
            return 0;
        }
    }

    float getPerimeter(){
        if(this->canExist()){
            return this->a + this->b + this->c;
        }else{
            cout << "Podany trojkat nie ma prawa bytu!" << endl;
            return 0;
        }
    }

    Triangle(float a, float b, float c){
        this->a = a;
        this->b = b;
        this->c = c;
    };

};
