#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

int countFileLines(string filePath){
    ifstream plik;
    plik.open(filePath);
    int i=0;
    string s;
    while (getline(plik,s))
    {
        i++;
    }
    return i;
    
}

void piFinder(int zakres){
    int x,y;
    int a=200, b=200;
    int sqrSide = 400;
    int r=sqrSide/2;
    ifstream plik;
    plik.open("punkty.txt");
    int ile_na_kole=0, ile_w_kole=0, ile_poza_kolem=0;
    int ile_na_kwadracie=0, ile_w_kwadracie=0, ile_poza_kwadratem=0;

    for(int i=0; i<zakres; i++){

        plik>>x;
        plik>>y;
        // cout << "("<<x<<","<<y<<") ";

        if((x<=400&&x>=0)&&(y<=400&&y>=0)){
            if((x==400||x==0)||(y==400||y==0)){
                ile_na_kwadracie++;
            }else{
                ile_w_kwadracie++;
            }
        }else{
            ile_poza_kwadratem++;
        }

        if((x-a)*(x-a)+(y-b)*(y-b)==r*r){
            ile_na_kole++;
        }else if((x-a)*(x-a)+(y-b)*(y-b)<r*r){
            ile_w_kole++;
        }else{
            ile_poza_kolem++;
        }
    }
    cout << endl;
    plik.close();

    // cout<<"Punktow na kole jest: "<< ile_na_kole << endl;
    // cout<<"Punktow w kole jest: "<< ile_w_kole << endl;
    // cout<<"Punktow poza kolem jest: "<< ile_poza_kolem << endl << endl;
    // cout<<"Punktow na kwadracie jest: "<< ile_na_kwadracie << endl;
    // cout<<"Punktow w kwadracie jest: "<< ile_w_kwadracie << endl;
    // cout<<"Punktow poza kwadratem jest: "<< ile_poza_kwadratem << endl << endl; 

    float nk = ile_na_kole+ile_w_kole;
    float n = ile_na_kwadracie+ile_w_kwadracie;
    float p = sqrSide*sqrSide;
    float pk = (nk/n)*p;
    float pi = pk/(r*r);
    cout.precision(5); //zaokragla do 4 miejsc
    cout << "Szacunkowa wartosc liczby PI dla pierwszych " << zakres << " punktow w pliku: " << pi << endl;
}



int main(int argc, char** argv) {

    setlocale(LC_CTYPE, "polish");

    piFinder(100);
    piFinder(1000);
    piFinder(5000);
    piFinder(countFileLines("punkty.txt"));

    return 0;
}