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
            };
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

enum GameStatus{
    NotStarted = 0,
    Started = 1,
    Won = 2,
    Lost = 3
};

class Game {
    private:
        GameStatus status;
        int rows, cols, bombs;
        Cell * board;
    protected:

        
        void setStatus(GameStatus status);
        GameStatus getStatus();
        void setRows(int rows){this->rows = rows;};
        void setCols(int cols){this->cols = cols;};
    public:
        void start();
        void reset();
        void win();
        void loose();
        int getRows(){return this->rows;}
        int getCols(){return this->cols;}

        int from2D(int x, int y, int rows, int cols){
            return  y * this->getRows() + x;
        };

        static bool checkXY(Game * game, int x, int y){

        };

        /// @brief create aray of cells
        void createBoard(){
            int N = rows*cols;
            board = new Cell[N];
        }
};

void Game::setStatus(GameStatus status){
    this->status = status;
};

GameStatus Game::getStatus(){
    return this->status;
}

void Game::start(){
    if(this->getStatus() == GameStatus::NotStarted) this->setStatus(GameStatus::Started);
}

void Game::win(){
    if(this->getStatus() == GameStatus::Started) this->setStatus(GameStatus::Won);
}

void Game::loose(){
    if(this->getStatus() == GameStatus::Started) this->setStatus(GameStatus::Lost);
}

void Game::reset(){
    if(this->getStatus() == GameStatus::Started || this->getStatus() == GameStatus::Lost || this->getStatus() == GameStatus::Won) this->setStatus(GameStatus::NotStarted);
}

int main(){
    return 0;
}