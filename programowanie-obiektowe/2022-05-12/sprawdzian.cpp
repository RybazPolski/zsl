/*
    Utwórz menu, w którym użytkownik wybiera jeden z dwóch programów
    1) kalkulator
        dodawanie
        odejmowania
        mnożenie
        dzielenie
        potęgowanie
        
    2) obliczenie pola prostopadłościanu 
        zabezpiecz przed błędnymi danymi
        
    3) wyjście z programu
*/

#include <iostream>
#include <cmath>
using namespace std;

class Strightfallwall{ //ProstoPadloScian
    private:
        float a,b,h;
    public:
        void setA(float pA){
            a = pA;
        };
        void setB(float pB){
            b = pB;
        };
        void setH(float pH){
            h = pH; //okresla wysokosc na podstawie ph :P
        };
        float getA(){
            return a;
        };
        float getB(){
            return b;
        };
        float getH(){
            return h;
        };
        void askForSides(){
            system("cls");
            cout << "Podaj a prostopadloscianu:\n> ";
            float inputed;
            cin >> inputed;
            while (inputed<=0)
            {
                cout << "Liczba musi byc dodatnia! >:(\n";
                cout << "Podaj a prostopadloscianu:\n> ";
                cin >> inputed;
            }
            a = inputed;

            system("cls");
            cout << "Podaj b prostopadloscianu:\n> ";
            cin >> inputed;
            while (inputed<=0)
            {
                cout << "Liczba musi byc dodatnia! >:(\n";
                cout << "Podaj b prostopadloscianu:\n> ";
                cin >> inputed;
            }
            b = inputed;

            system("cls");
            cout << "Podaj wysokosc prostopadloscianu:\n> ";
            cin >> inputed;
            while (inputed<=0)
            {
                cout << "Liczba musi byc dodatnia! >:(\n";
                cout << "Podaj wysokosc prostopadloscianu:\n> ";
                cin >> inputed;
            }
            h = inputed;
        }
        float getArea(){
            return ((b*h)+(a*h)+(a*b))*2;
        }
        void showArea(){
            cout << "Pole wynosi " << getArea() << "\n"; 
        }
        

};

class Calculator{
    private:
        float a,b,last;
    public:
        void setA(float pA){
            a = pA;
        };
        void setB(float pB){
            b = pB;
        };
        float getA(){
            return a;
        };
        float getB(){
            return b;
        };
        int startThat(bool fromLast){
            system("cls");
            if(fromLast){
                a = last;
            }else{
                cout << "Wprowadz liczbe: ";
                cin >> a;
            }
            
            string choice;
            do{
                system ("cls");
                cout << "\n" << a;
                cout << "\n\nCo chcesz zrobic?\n1. Dodaj\n2. Odejmij\n3. Mnoz\n4. Dziel\n5. Poteguj\n6. Wyczysc\n> ";
                cin >> choice;
            }while(choice!="1" and choice!="2" and choice!="3" and choice!="4" and choice!="5" and choice!="6");
                system ("cls");
                cout << "Wprowadz nastepna liczbe: \n" << a;
            if(choice=="1"){
                cout << "+";
            };
            if(choice=="2"){
                cout << "-";
                
            };
            if(choice=="3"){
                cout << "*";
                
            };
            if(choice=="4"){
                cout << "/";

            };
            if(choice=="5"){
                cout << "^";
                
            };
            if(choice=="6"){
                system("cls");
                startThat(false);                
            };
            cin >> b;
            if(choice=="1"){
                last = a+b;
            };
            if(choice=="2"){
                last = a-b;
                
            };
            if(choice=="3"){
                last = a*b;
                
            };
            if(choice=="4"){
                if(b==0){
                    system("cls");
                    cout << "Nie dzieli się przez 0!\n";
                    return 0;
                }
                last = a/b;

            };
            if(choice=="5"){
                last = pow(a,b);  
            };
            do{
            system("cls");

            cout << "\n" << a;
            if(choice=="1"){
                cout << "+";
            };
            if(choice=="2"){
                cout << "-";
                
            };
            if(choice=="3"){
                cout << "*";
                
            };
            if(choice=="4"){
                cout << "/";

            };
            if(choice=="5"){
                cout << "^";
                
            };
            

                cout << b << "=" << last << "\n";
                cout << "Kontynuowac? (t/n): ";
                cin >> choice;
            }while (choice != "t" and choice!="n");
            if(choice == "t"){
                startThat(true);
            }else{
                cout << "\n";
            }


        };
};

class Menu{
    private:
        Calculator calc;
        Strightfallwall sfw;

    public:

        void display(){
            string choice;
            do{
                cout << "Co chcesz uruchomic?\n1. Kalkulator\n2. Obliczanie pola prostopadloscianu\n3. Wyjdz\n> ";
                cin >> choice;
            }while(choice!="1" and choice!="2" and choice!="3");
            
            if(choice=="1"){
                calc.startThat(false);
            };
            if(choice=="2"){
                sfw.askForSides();
                system("cls");
                sfw.showArea();
                cout << endl;
            };
            if(choice=="3"){
                exit(0);    
            };
            display();
        }
};

int main(){

    setlocale(LC_CTYPE,"polish");

    Menu menu;
    menu.display();
    return 0;
}

















