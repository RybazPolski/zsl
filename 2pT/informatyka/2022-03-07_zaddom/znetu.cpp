#include <iostream>
#include <fstream>
#include <iomanip>

#define N 10000

using namespace std;

int main()
{
 ifstream plik;
 ofstream wyniki;
 plik.open("punkty.txt");
 wyniki.open("wyniki_4.txt");
 // pobieranie danych do tablicy x i y
 int x[N];
 int y[N];
 for (int i=0; i<N; i++)
 plik >> x[i] >> y[i];

//srodek okregu S = ( a , b )
 int a = 200, b = 200;

//promien okregu
 int r = 200;

int ile1000 = 0;
 int ile5000 = 0;
 int ile = 0;

long wynik;
 for (int i=0; i<1000; i++) {
 wynik = ((x[i]-a)*(x[i]-a))+((y[i]-b)*(y[i]-b));
 if (wynik <= r*r) ile1000++;
 }
 for (int i=0; i<5000; i++) {
 wynik = ((x[i]-a)*(x[i]-a))+((y[i]-b)*(y[i]-b));
 if (wynik <= r*r) ile5000++;
 }
 for (int i=0; i<N; i++) {
 wynik = ((x[i]-a)*(x[i]-a))+((y[i]-b)*(y[i]-b));
 if (wynik <= r*r) ile++;
 }
 wyniki << "Ze wzoru wynika, iz stosunke Nk do N nalezy przemnozyc o 4." << endl;
 wyniki << "Przyblizona wartosc liczby pi (pierwszych 1000 pkt): ";
 wyniki << fixed; 
 //ustawia wyswietlana liczbe zmiennoprzecinkowa na notacje stala, potrzebna do tego biblioteka iomanip
 wyniki << setprecision(4); 
 //ustawia dokladnosc wyswietlanej liczby na liczbe w nawiasie np. 4 to 0,0001
 wyniki << (double(ile1000) / 1000) * 4 << endl;
 wyniki << "Przyblizona wartosc liczby pi (pierwszych 5000 pkt): ";
 wyniki << fixed; 
 wyniki << setprecision(4);
 wyniki << (double(ile5000) / 5000) * 4 << endl;
 wyniki << "Przyblizona wartosc liczby pi (wszystkich pkt): ";
 wyniki << fixed; 
 wyniki << setprecision(4); 
 wyniki << (double(ile) / N) * 4 << endl;

// zamkniecie plikow
 plik.close();
 wyniki.close();

return 0;
}