#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int zad1(){
	double T1[10];
	double avg=0;
	for(int i=0; i<10; i++){
		T1[i] = -5+(double)rand()/RAND_MAX*10;
		cout << T1[i] << " ";
		avg = avg+T1[i];
	}
	avg=avg/10;
	cout << endl << avg << endl;
}

int zad2(){
	double T2[10000];
	double avg=0;
	for(int i=0; i<10000; i++){
		T2[i] = -5+(double)rand()/RAND_MAX*10;
		
		if((i+1)%20==0){
			cout << T2[i] << " ";
		}
		
		avg = avg+T2[i];
	}
	avg=avg/10000;
	cout << endl << avg << endl;
}

int main(){
	srand(time(NULL));
	zad1();
	zad2();

	return 0;
}
