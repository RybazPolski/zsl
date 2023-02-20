#include <iostream>
#include <map>
using namespace std;

string const key = "INF";
map<int,int>keyMap;

void order(){
    for(int i=0; i<(int)key.length(); i++){
        keyMap[key[i]]=i;
    }
}

string encrypt(string s){
    int rows,cols,j;
    string cipher = "";
    cols = key.length();
    rows = s.length()/cols;
    if(s.length() % cols) rows+=1;

    char matrix[rows][cols];
    for(int i=0, k=0;i < rows; i++){
        for(int j=0; j<cols;){
            if(s[k]=='\0'){
                matrix[i][j] = '\0';
                j++;
            }
            if(isalpha(s[k])||s[k]==' '){
                matrix[i][j]=s[k]; // przypisanie wartości 
                j++;
            }
            k++;
        }
    }

    for(auto ii=keyMap.begin(); ii!=keyMap.end();ii++){
        j=ii->second;
        for(int i=0; i<rows; i++){
            if(isalpha(matrix[i][j]) || matrix[i][j]==' ' || matrix[i][j]=='_'){
                cipher+=matrix[i][j];
            }
        }
    }

    return cipher;

}

string deenc(string cipher){
    int col = key.length();
    int row = cipher.length()/col;
    char cipherMap[row][col];
    string s;

    for (int j=0,k=0;j<col;j++){
        for(int i=0; i<row; i++){
            cipherMap[i][j]=cipher[k++];
        }
    }

    int index = 0;
    for (auto ii = keyMap.begin(); ii!=keyMap.end(); ii++){
        ii->second = index++;
    }
    
    char decCipher[row][col];
    
    auto ii = keyMap.begin();
    int k = 0;
    for (int l=0, j; key[l]!='\0';k++){
        j = keyMap[key[l++]];
    
        for(int i=0; i<row; i++){
            if(decCipher[i][j]!='_') s += decCipher[i][j];
        }
    };


    return s;
}

int main(){
    string tekst = "informatyka"; order();
    cout << tekst << " => " << encrypt(tekst) << endl;
    cout << encrypt(tekst) << " => " << deenc(encrypt(tekst)) << endl;
    return 0;
}