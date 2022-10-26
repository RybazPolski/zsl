#include <iostream>
#include <concepts>
#include <cstddef>

using namespace std;

// template<typename T>
// concept Integral = std::is_integral_v<T>;

// template<Integral T>
// T add(T a, T b){
//     return a+b;
// };

// int main(){
//     int a=1,b=2;
//     float af=1.5f,bf=2.1f;
//     int c = add<int>(a,b);
//     float cf = add<float>(af,bf);
//     cout << c << endl;
//     cout << cf << endl;

//     return 0;
// };

struct Punkt
{
    int x,y;
};




struct Punkt1
{
    int x,y;
    Punkt1 operator +(Punkt1 & pnt){
        return {.x = x + pnt.x, .y = y + pnt.y};
    };

    void show(){
        cout << "("<<x<<", "<<y<<")"<<endl;
    }
};

template<typename T>
concept Concept1 = requires(T a, T b){
    a+b;    //sprawdza czy można wykonać operację dodawania a z b
};
template<Concept1 T>
T testConcept1(T a, T b){
    return a+b;     //jeżeli test conceptu1 zostanie zdany, zwraca a+b
};




template<Concept1>
class S
{
};
template<typename T>
concept Concept2 = requires(T a, T b){
    typename S<T>;  //no więc to nie wiem jak działa, nawet w necie nie znalazłem odpowiedzi 
};
template<Concept2 T>
T testConcept2(T a, T b){
    cout << "OK" << endl;
    return a+b;     //jeżeli test Conceptu2 zostanie zdany, wyświetla OK i zwraca a+b
};




template<typename T>
concept Concept3 = requires(T a){
    a.x;                            //sprawdza czy podane a zawiera pole x
    {a.x + 1}->std::same_as<int>;   //sprawdza czy a.x + 1 jest tego typu co int 
};

template<Concept3 T>
int testConcept3(T a){
    cout << "OK!" << endl;
    return a.x+1;   //jeżeli test Conceptu3 zostanie zdany, wyświetla OK! i zwraca x+1 z obiektu a
};

int main(){
    Punkt1 pnt1 = {5,3};
    Punkt1 pnt2 = {3,2};
    // Punkt1 res1 = testConcept1<Punkt1>(pnt1,pnt2);
    Punkt1 res2 = testConcept2<Punkt1>(pnt1,pnt2);
    // cout << testConcept3<Punkt1>(pnt1);
    res2.show();
    return 0;
}