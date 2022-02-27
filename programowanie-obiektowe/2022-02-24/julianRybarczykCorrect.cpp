// #include <Grupa 1>
#include <iostream>

using namespace std;

struct Date
{
    int dd, mm, yyyy;
};


class Pracownik{

    public:
        string imie, nazwisko, dzial;
        Date data_urodzenia, data_zatrudnienia; 
        int nip;
        float pensja;

        void showData(){
            cout << "Imię: " << imie 
                << "\nNazwisko: " << nazwisko 
                << "\nData urodzenia: " << data_urodzenia.dd << "." << data_urodzenia.mm << "." << data_urodzenia.yyyy
                << "\nNIP: " << nip 
                << "\nData zatrudnienia: " << data_zatrudnienia.dd << "." << data_zatrudnienia.mm << "." << data_zatrudnienia.yyyy
                << "\nDział: " << dzial
                << "\nPensja: " << pensja << "zł";
        };

        Pracownik(){};

        Pracownik(string pImie, string pNazwisko, string pDzial, Date pData_urodzenia, Date pData_zatrudnienia, int pNip, float pPensja){
            imie = pImie;
            nazwisko = pNazwisko;
            dzial = pDzial;
            data_urodzenia = pData_urodzenia;
            data_zatrudnienia = pData_zatrudnienia;
            nip = pNip;
            pensja = pPensja;
        };

};

class Kierownik : public Pracownik{

    public:
        int ilosc_podwladnych;
        string typ_kierownictwa;
        float dodatek_funkcyjny;

    void showData(){
            cout << "Imię: " << imie 
                << "\nNazwisko: " << nazwisko 
                << "\nData urodzenia: " << data_urodzenia.dd << "." << data_urodzenia.mm << "." << data_urodzenia.yyyy
                << "\nNIP: " << nip 
                << "\nData zatrudnienia: " << data_zatrudnienia.dd << "." << data_zatrudnienia.mm << "." << data_zatrudnienia.yyyy
                << "\nDział: " << dzial
                << "\nPensja: " << pensja << "zł"
                << "\nIlość podwładnych: " << ilosc_podwladnych 
                << "\nTyp kierownictwa: " << typ_kierownictwa
                << "\nDodatek funkcyjny: " << dodatek_funkcyjny << "%\n"
                << "Pensja z dodatkiem: " << (float)pensja*dodatek_funkcyjny + (float)pensja<<"\n";
        };

        Kierownik(string pImie, string pNazwisko, string pDzial, Date pData_urodzenia, Date pData_zatrudnienia, int pNip, float pPensja, int pIlosc_podwladnych, string pTyp_kierownictwa, float pDodatek_funkcyjny){
            imie = pImie;
            nazwisko = pNazwisko;
            dzial = pDzial;
            data_urodzenia = pData_urodzenia;
            data_zatrudnienia = pData_zatrudnienia;
            nip = pNip;
            pensja = pPensja;
            ilosc_podwladnych = pIlosc_podwladnych;
            typ_kierownictwa = pTyp_kierownictwa;
            dodatek_funkcyjny = pDodatek_funkcyjny;
        };

        virtual Pracownik * zatrudnij(string pImie, string pNazwisko, string pDzial, Date pData_urodzenia, Date pData_zatrudnienia, int pNip, float pPensja){
            Pracownik *p;
            p = new Pracownik(pImie, pNazwisko, pDzial, pData_urodzenia, pData_zatrudnienia, pNip, pPensja);
            return p;
        }


};

int main(){
    setlocale(LC_CTYPE,"polish");

    Kierownik jan("Jan","Kowalski","zamiatacz",{1,12,2000},{1,3,2019},1234,3000.99, 8, "nie znam typów kierownictwa",15);
    jan.showData();

    Pracownik *andrzej = jan.zatrudnij("Andrzej","Nowak","generał",{23,3,2002},{27,2,2022},2345,1299.99);
    andrzej->showData();


    return 0;
};