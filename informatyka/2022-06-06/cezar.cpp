//mxondq

#include <iostream>
using namespace std;

char moveChar(char a, int toMove){
    int moved = (int(a)+toMove);

    if(int(a)<=90 and int(a)>= 65){
        if(moved < 65){
            do{
                moved = 26+moved;
            }while(moved<65);
            
        }else if (moved>90){
            do{
                moved = 64+(moved%90);
            }while(moved>90);
            
        };

    }else if (int(a)>=97 and int(a)<=122)
    {
        if(moved < 97){
            do{
                moved = 26+moved;
            }while(moved<97);
            
        }else if (moved>122){
            do{
                moved = 96+(moved%122);
            }while(moved>122);
            
        };
    }

    return char(moved);
}

int main(){

    

    char a;
    cin >> a;
    cout << "Podano: " << a << "\n";
    cout << "ASCII podanego: " << int(a) << "\n";
    
    
    char moved = moveChar(a,3);
    

    cout << "ASCII po przesunieciu: " << int(moved) << "\n";
    cout << "Po przesunieciu: " << moved <<  "\n";
    
     
    
};