#include <iostream>
#include <ctime>
#include <cstdlib>
using namespace std;

int main(){
	
	srand(time(NULL));
	int T[20];
	int sum = 0;
	
	for(int i=0;i<20;i++){
		T[i] = rand()%(26)-10;
		
		cout << T[i] << "\t";	
		sum = sum + T[i];
	};
	
	cout << "\nSuma: " << sum;
	
}
