#include <bits/stdc++.h>

using namespace std;

class Dzialania
{
public:
    float a,b;

};

class Dodawanie :public Dzialania
{
public:
    float dodawanie(float a,float b);
};

class Odejmowanie :public Dzialania
{
public:
    float odejmowanie(float a,float b);
};

class Dzielenie :public Dzialania
{
public:
    float dzielenie(float a,float b);
};

class Mnozenie :public Dzialania
{
public:
    float mnozenie(float a,float b);
};

class Gra
{
public:
    int wynik=0,runda=0,mAx,mIn;

    void wygeneruj_dzialanie(int mAx,int mIn);
};



void Gra::wygeneruj_dzialanie(int mAx,int mIn)
{
    int liczba;
    float odp;
    srand(time(NULL));
    liczba=(rand()%4)+1;

    switch(liczba)
    {
        case 1:
        {
            Dodawanie *w= new Dodawanie();
            w->a=(rand()%mAx)+mIn;
            w->b=(rand()%mAx)+mIn;
            cout << w->a<<" + "<<w->b<<"= ";
            cin >> odp;
            if (odp==w->dodawanie(w->a,w->b))
            {
                wynik++;
                cout << "Poprawna odpowiedz"<<endl;
            }
            else
            {
                cout << "Zla odpowiedz poprawna to: "<<w->dodawanie(w->a,w->b)<<endl;
            }
            delete w;
            break;
        }
        case 2:
        {
            Odejmowanie *w= new Odejmowanie();
            w->a=(rand()%mAx)+mIn;
            w->b=(rand()%mAx)+mIn;
            cout << w->a<<" - "<<w->b<<"= ";
            cin >> odp;
            if (odp==w->odejmowanie(w->a,w->b))
            {
                wynik++;
                cout << "Poprawna odpowiedz"<<endl;
            }
            else
            {
                cout << "Zla odpowiedz poprawna to: "<<w->odejmowanie(w->a,w->b)<<endl;
            }
            delete w;
            break;
        }
        case 3:
        {
            Dzielenie *w= new Dzielenie();
            w->a=(rand()%(int)sqrt(mAx))+mIn;
            w->b=(rand()%(int)sqrt(mAx))+mIn;
            cout << w->a*w->b<<" / "<<w->b<<"= ";
            cin >> odp;
            if (odp==w->dzielenie(w->a,w->b))
            {
                wynik++;
                cout << "Poprawna odpowiedz"<<endl;
            }
            else
            {
                cout << "Zla odpowiedz poprawna to: "<<w->dzielenie(w->a,w->b)<<endl;
            }
            delete w;
            break;
        }
        case 4:
        {
                Mnozenie *w= new Mnozenie();
            w->a=(rand()%(int)sqrt(mAx))+mIn;
            w->b=(rand()%(int)sqrt(mAx))+mIn;
            cout << w->a<<" * "<<w->b<<"= ";
            cin >> odp;
            if (odp==w->mnozenie(w->a,w->b))
            {
                wynik++;
                cout << "Poprawna odpowiedz"<<endl;
            }
            else
            {
                cout << "Zla odpowiedz poprawna to: "<<w->mnozenie(w->a,w->b)<<endl;
            }
            delete w;
            break;
        }
    }
}

float Dodawanie::dodawanie(float a,float b)
{
    return a+b;
}

float Odejmowanie::odejmowanie(float a,float b)
{
    return a-b;
}

float Dzielenie::dzielenie(float a,float b)
{
    return a*b/b;
}

float Mnozenie::mnozenie(float a,float b)
{
    return a*b;
}

int main()
{
    string odp;
    Gra gracz;
    cout << "Witamy w Grze!!!"<<endl;
    cout << "Wybierz poziom Trudnosci (latwy,sredni,trudny,expert): ";
    cin >> odp;
    while(odp!="latwy"&&odp!="sredni"&&odp!="trudny"&&odp!="expert")
    {
    system("cls");
    cout << "Wybrales poziom ktory nie istnieje sprobuj jeszcze raz"<<endl;
    cout << "Wybierz poziom Trudnosci (latwy,sredni,trudny,expert): ";
    cin >> odp;
    }
    cout << "Podaj ile rund chcesz zagrac: ";
    int odp2;
    cin >> odp2;
    if(odp=="latwy")
    {
        gracz.mAx=50;
        gracz.mIn=1;
    }
    else if(odp=="sredni")
    {
        gracz.mAx=150;
        gracz.mIn=50;
    }
    else if(odp=="trudny")
    {
        gracz.mAx=1500;
        gracz.mIn=150;
    }
    else
    {
        gracz.mAx=10000;
        gracz.mIn=1500;
    }


    while (gracz.runda<odp2)
    {

        system("cls");
        gracz.runda++;
        gracz.wygeneruj_dzialanie(gracz.mAx,gracz.mIn);
        cout << "Runda: "<<gracz.runda<<endl<<"Wynik: "<<gracz.wynik<<endl;
        system("pause");
    }

    return 0;
}
