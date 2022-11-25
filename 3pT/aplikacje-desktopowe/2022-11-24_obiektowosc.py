class Film:
    def __init__(self, title, duration, director, premiere, script, genre):
        self.title = title
        self.duration = duration
        self.director = director
        self.premiere = premiere
        self.script = script
        self.genre = genre
    
    def about(self):
        print("Tytuł:",self.title,"\nCzas trwania:",self.duration,"\nReżyseria:",self.director,"\nPremiera:",self.premiere,"\nScenariusz:",self.script,"\nGatunek:",self.genre)
    
    def setPremiere(self,premiere):
        oldPremiere = self.premiere
        self.premiere = premiere
        return oldPremiere

def main():
    movieList = []
    print("================")
    movieList.append(Film("Minecraft: Film","2h10min","Notch","4 marca 2022","Jeb","Game"))
    movieList[0].about();
    print("================")
    movieList[0].setPremiere("30 lutego 3022")
    movieList[0].about();
    print("================")

    movieList.append(Film("LEGO Przygoda","1h40min","Phil Lord / Chris Miller","7 lutego 2014","Phil Lord / Chris Miller","Animacja / Komedia / Akcja"))
    movieList.append(Film("LEGO Przygoda 2","1h46min","Mike Mitchell","8 lutego 2019","Phil Lord / Chris Miller","Animacja / Komedia / Akcja"))
    movieList[1].about()
    print("================")
    movieList[2].about()
    print("================")


if __name__ == "__main__":
    main()
