#include <iostream>

enum CellStatus{
    Hidden = 0,
    Flagged = 1,
    Unhidden = 2,
    Explode = 3
};

class Cell{
    private: 
        int content;
        bool isBomb;
        CellStatus status;
    protected:
        bool getIsBomb(){return this->isBomb;};
        void setIsBomb(bool isBomb){this->isBomb=isBomb;}
        void setStatus(CellStatus status){this->status=status;}
    public:
        int getContent(){return this->content;};
        void setConent(int content){this->content=content;}
        CellStatus getStatus(){return this->status;}
        /// @brief Insert bomb to cell. Only if cell is hidden.
        void putBomb(){
            if(this->getStatus()==CellStatus::Hidden){
                this->setIsBomb(1);
            }
        }
        /// @brief Flag cell. Only if cell is hidden.
        void flag(){
            if(this->getStatus()==CellStatus::Hidden){
                this->setStatus(CellStatus::Flagged);
            }
        }
        /// @brief Unflag (hide) cell. Only if cell is flagged.
        void unflag(){
            if(this->getStatus()==CellStatus::Flagged){
                this->setStatus(CellStatus::Hidden);
            }
        }
        /// @brief Show cell (without triggering bomb if there is). Only if cell is hidden.
        void show(){
            if(this->getStatus()==CellStatus::Explode) return;
            if(this->getStatus()==CellStatus::Hidden){
                this->setStatus(CellStatus::Unhidden);
            }
        }
        /// @brief Check cell. If cell is bomb, cell explodes. Else just unhide it.
        void check(){
            if(this->getStatus()!=CellStatus::Hidden) return;
            if(this->isBomb) 
                this->setStatus(CellStatus::Explode); 
            else 
                this->setStatus(CellStatus::Unhidden);
        }


        Cell(){
            this->content = 0;
            this->isBomb = false;
            this->status = CellStatus::Hidden;
        }
        
};

int main(){
    std::cout << "===== cell 1 (clear) =====" << std::endl; 
    Cell c1;
    std::cout << "content: " << c1.getContent() << std::endl; 
    std::cout << "status: " << c1.getStatus() << std::endl; 
    c1.flag();
    std::cout << "content: " << c1.getContent() << std::endl; 
    std::cout << "status: " << c1.getStatus() << std::endl; 
    c1.unflag();
    std::cout << "content: " << c1.getContent() << std::endl; 
    std::cout << "status: " << c1.getStatus() << std::endl; 
    c1.check();
    std::cout << "content: " << c1.getContent() << std::endl; 
    std::cout << "status: " << c1.getStatus() << std::endl; 


    Cell c2;
    std::cout << "===== cell 2 (bomb) =====" << std::endl; 
    std::cout << "content: " << c2.getContent() << std::endl; 
    std::cout << "status: " << c2.getStatus() << std::endl; 
    c2.putBomb();
    c2.check();
    std::cout << "content: " << c2.getContent() << std::endl; 
    std::cout << "status: " << c2.getStatus() << std::endl; 
    return 0;
};