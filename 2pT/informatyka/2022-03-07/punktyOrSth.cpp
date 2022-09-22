#include <iostream>
#include <fstream>
using namespace std;




int main(int argc, char** argv) {

    setlocale(LC_CTYPE, "polish");

    int x,y;
    ifstream plik;
    plik.open("punkty.txt");
    int ile_na=0, ile_w=0, ile_poza=0;
    for(int i=0; i<3; i++){

    plik>>x;
    plik>>y;

    if((x-200)*(x-200)+(y-200)*(y-200)==200*200){
    ile_na++;
    cout << "("<<x<<","<<y<<")";
    }else if((x-200)*(x-200)+(y-200)*(y-200)<200*200)
    ile_w++;
    else
    ile_poza++;
    }
    cout<<"Punktów na jest: "<< ile_na << endl;
     cout<<"Punktów w jest: "<< ile_w << endl;
     cout<<"Punktów poza jest: "<< ile_poza << endl;
    return 0;
}