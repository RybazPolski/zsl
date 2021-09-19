#include <iostream>
using namespace std;

struct Book{
    string title, autor;
    short int year;
    float cena;
    bool hardCover, coursebook;
};

struct Address{
    string city, street, house, postalCode, country;
};

struct BirthdayDate{
    unsigned short int dd, mm, rrrr;
};

struct Client{
    string name, surname;
    BirthdayDate birthdayDate;
    Address address;
};


class Bookstore{
    public:
        Client client;
        Book book;

    void showBookData();
    void showClientData();
};

void Bookstore::showBookData(){
    cout << "Tytuł: " << book.title;
};

int main(int argc, char** argv){
    return 0;
};