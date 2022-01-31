#include <iostream>
using namespace std;

class Worker{

	private:
        string name {""};
		string surname {""};

    public:
		string getName(){
			return name;
		};
		
		string getSurname(){
			return surname;
		};
        
		string getData(){
	    	return + "Imi�: " + getName() + "\nNazwisko: " + getSurname();
		};
		

        
        void setName(string pName){
        	name = pName;
		};

		void setSurname(string pSurname){
        	surname = pSurname;
		};	

};

class Teacher : public Worker { //definicja klasy dziedziczonej z dost�pem typu public

    private:
        string schoolSubject {""};
	
	public:
        string getData(){
		    return + "Imi�: " + getName() + "\nNazwisko: " + getSurname() + "\nZaj�cia: " + schoolSubject;
		};
		
        void setSchoolSubject(string pSchoolSubject){
        	schoolSubject = pSchoolSubject;
		};	

};

int main(){
    setlocale(LC_CTYPE,"polish");

    Teacher nowak;
    nowak.setName("Renata");
	nowak.setSurname("Stara");
	nowak.setSchoolSubject("Rosyjski"); 
    cout << nowak.getData();

    return 0;
}
