#include <iostream>
using namespace std;
class Car{
    private:
        string brand, model, color;
        float price;
        int year;

    public:
        float getPrice(){    
            return price;
        };
        void setPrice(float pPrice){    
            price = pPrice;
        };
        Car(string pBrand, string pModel, string pColor, int pYear, float pPrice);
};

Car::Car(string pBrand, string pModel, string pColor, int pYear, float pPrice){
    brand = pBrand;
    model = pModel;
    color = pColor;
    year = pYear;
    price = pPrice;
};

int main(){
    setlocale(LC_CTYPE, "polish");

    Car fiat("Fiat","Multipla","Czerwony",2000,0);
    fiat.setPrice(10000);
    cout << "Cena: " << fiat.getPrice() << "zł";
    return 0;
};