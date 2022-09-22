#include <iostream>
using namespace std;

class Computer{
    private:
        string brand, model;
    public:
        void setBrand(string pBrand){
            brand = pBrand;
        };
        string getBrand(){
            return brand;
        }
        void setModel(string pModel){
            model = pModel;
        };
        string getModel(){
            return model;
        }
};

class PC : public Computer{
    private:
        string caseType;
    public:
        void setCaseType(string pCaseType){
            caseType = pCaseType;
        };
        string getCaseType(){
            return caseType;
        }

    void showData(){
        cout << "Marka: " << getBrand() << "\nModel: " << getModel() << "\nTyp obudowy: " << caseType << endl;
    }

    void insertData(){
        string x;
        string y;
        cout << "Podaj marke:\n> ";
        cin >> x;
        setBrand(x);
        cout << "Podaj model:\n> ";
        cin >> y;
        setModel(y);
        cout << "Podaj typ obudowy:\n> ";
        cin >> caseType;

        cout << "\n\n";
        showData();
    }
    PC(){
        insertData();
    }
};

class Laptop : public Computer{
    private:
        string caseColor;
        float diagonal;
    public:
        void setCaseColor(string pCaseColor){
            caseColor = pCaseColor;
        };
        string getCaseColor(){
            return caseColor;
        }
        void setCaseColor(float pDiagonal){
            diagonal = pDiagonal;
        };
        float getDiagonal(){
            return diagonal;
        }

    void showData(){
        cout << "Marka: " << getBrand() << "\nModel: " << getModel() << "\nKolor obudowy: " << caseColor << "\nPrzekatna: " << diagonal << endl;
    }

    void insertData(){
        string x;
        string y;
        cout << "Podaj marke:\n> ";
        cin >> x;
        setBrand(x);
        cout << "Podaj model:\n> ";
        cin >> y;
        setModel(y);
        cout << "Podaj kolor obudowy:\n> ";
        cin >> caseColor;
        cout << "Podaj przekatna w calach:\n> ";
        cin >> diagonal;

        cout << "\n";
        showData();
        cout << "\n";
    }
    Laptop(){
        insertData();
    }
};

int main(){
    setlocale(LC_CTYPE,"polish");

    Laptop nokia;
    PC dell;

    cout << endl;
    system("pause");
    return 0;
}