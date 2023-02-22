#include <iostream>

int rows = 3, cols = 6;
int N = rows*cols;

int* tab2D = new int[N];

int from2D(int x, int y, int rows, int cols){
    return  y*rows + x;
}

int main(){
    for(int i=0; i<N; i++){
        tab2D[i] = i;
    }
}
