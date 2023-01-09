#include <iostream>
#include <string>
using namespace std;

int zad1(string str){
    return str.length();
};
void zad2(string str){
    for(int i=0;i<zad1(str);i++){
        cout << str[i] << " ";
    };
    cout << endl;
    
    for(int i=zad1(str)-1;i>=0;i--){
        cout << str[i] << " ";
    };
    cout << endl;
    
    for(int i=0;i<zad1(str);i++){
        cout << str[i];
        if(i%2==1){
            cout << " ";
        }
    };
    cout << endl;
    
    for(int i=zad1(str)-1;i>=0;i--){
        cout << str[i];
        if(i%3==2){
            cout << "  ";
        }
    };
    cout << endl;
};

void zad3(string str){
    int counta = 0;
    int countNotB = 0;
    for(int i=0;i<zad1(str);i++){
        if(str[i]=='a') counta++;
        if(str[i]!='B' && (i+1)%2==0) countNotB++;
    };
    cout << "Ilosc a: " << counta << "\nIlosc parzystych innych niz B: " << countNotB << endl;
}

string zad4(string str){
    for(int i=0;i<zad1(str);i++){
        if(str[i]=='a') str[i]='*';
    };
    return str;
}
string zad5(string str){
    for(int i=0;i<zad1(str);i++){
        if(str[i]=='+'||str[i]=='-'||str[i]=='*'||str[i]=='/'||str[i]=='^'||str[i]=='%') str[i]='?';
    };
    return str;
}
string zad6(string str){
    for(int i=0;i<zad1(str);i++){
        if(islower(str[i])) str[i]=toupper(str[i]); else if(isupper(str[i])) str[i]=tolower(str[i]);
    };
    return str;
}
void zad7(unsigned int a, unsigned int b){
    for(;a<=b;a++){
        cout << a << " -> " << char(a) << endl;
    }
}


int main(){
    string str;
    cout << "Podaj teskt:\n> ";
    getline(cin,str);
    cout<< "1)\n" << zad1(str)<<endl<<endl;
    cout<< "2)\n"; zad2(str); cout << endl;
    cout<< "3)\n"; zad3(str); cout<< endl;
    cout<< "4)\n" << zad4(str)<<endl<<endl;
    cout<< "5)\n" << zad5(str)<<endl<<endl;
    cout<< "6)\n" << zad6(str)<<endl<<endl;
    
    cout << "7)\n";
    unsigned int a,b;
    cout << "Podaj otwarcie przedzialu kodow ASCII ktore chcesz wyswietlic <0-255>:\n> ";
    cin >> a;
    while(a<0||a>255){
    cout << "Podaj POPRAWNA WARTOSC otwarcia przedzialu kodow ASCII ktore chcesz wyswietlic <0-255>:\n> ";
        cin >> a;
    }
    cout << "Podaj zamkniecie przedzialu kodow ASCII ktore chcesz wyswietlic <"<<a<<"-255>:\n> ";
    cin >> b;
    while(b<a||b>255){
    cout << "Podaj POPRAWNA WARTOSC zamkniecia przedzialu kodow ASCII ktore chcesz wyswietlic <"<<a<<"-255>:\n> ";
        cin >> b;
    }
    zad7(a,b);

    return 0;
}