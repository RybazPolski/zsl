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
	    	return + "Imiê: " + getName() + "\nNazwisko: " + getSurname();
		};
		

        
        void setName(string pName){
        	name = pName;
		};

		void setSurname(string pSurname){
        	surname = pSurname;
		};	

};

class Teacher : public Worker { //definicja klasy dziedziczonej z dostêpem typu public

    private:
        string schoolSubject {""};
	
	public:
        string getData(){
		    return + "Imiê: " + getName() + "\nNazwisko: " + getSurname() + "\nZajêcia: " + schoolSubject;
		};
		
        void setSchoolSubject(string pSchoolSubject){
        	schoolSubject = pSchoolSubject;
		};	
		
		string getSchoolSubject(){
			return schoolSubject;	
		};

};

class Superteacher : public Teacher {
	private:
		string schoolClass {""};
	public:
		string getData(){
		    return + "Imiê: " + getName() + "\nNazwisko: " + getSurname() + "\nZajêcia: " + getSchoolSubject() + "\nKlasa: " + schoolClass;
		};
		
        void setSchoolClass(string pSchoolClass){
        	schoolClass = pSchoolClass;
		};	
		
		string getSchoolClass(){
			return schoolClass;	
		};

		
};

int main(){
    setlocale(LC_CTYPE,"polish");

    Superteacher nowak;
    nowak.setName("Renata");
	nowak.setSurname("Stara");
	nowak.setSchoolSubject("Rosyjski"); 
	nowak.setSchoolClass("2xD");
    cout << nowak.getData();

    return 0;
}
