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
                s[k]; 
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

int main(){
    string tekst = "informatyka"; order();
    cout << tekst << " => " << encrypt(tekst);
}