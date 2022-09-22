#include <iostream>
#include <cmath>

using namespace std;

class Room{
    public:
        float width, lenght;

    inline int intLenght(){
        return round(lenght);
    }
    // po wywołaniu funkcji inline, zostaje wklejony kod tej funkcji 
    // w miejsce, w którym została wywołana.
    // NIE można w niej stosować instrukcji warunkowych, ani zmiennych statycznych

    inline int intWidth(){
        return round(width);
    }
};

int main(int argc, char** argv){
    setlocale(LC_CTYPE,"polish");

    Room sleepingRoom;
    sleepingRoom.lenght = 3.5;
    sleepingRoom.lenght = 5.5;

    cout << "długość pokoju przed zaokrągleniem: " << sleepingRoom.lenght << "cm.\ndługość pokoju po zaokrągleniu: " << sleepingRoom.intLenght() << "cm.\n";

    cout << "szerokość pokoju przed zaokrągleniem: " << sleepingRoom.width << "cm.\nszerokość pokoju po zaokrągleniu: " << sleepingRoom.intWidth() << "cm.\n";
    

    return 0;
}