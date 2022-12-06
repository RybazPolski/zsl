class RownanieKwadratowe:

    def __init__(self, a, b, c):
        self.a = a
        self.b = b
        self.c = c

    def amIWrong(self):
        if self.a == 0 and self.b == 0 and self.c == 0:
            return "nieskończenie wiele rozwiązań"
        elif self.a == 0:
            return "Funkcja nie jest liniowa!!!! >:("

        return False

    def findX(a, b, Delta):
        return (-b+Delta)/(2*a)

    def Rozwiaz(self):
        if self.amIWrong():
            print(self.amIWrong())
            return  # destroy function

        Delta = self.b**2 - 4 * self.a * self.c
        print(Delta)
        if Delta < 0:
            return "Brak Rozwiązań"
        elif Delta == 0:
            return RownanieKwadratowe.findX(self.a, self.b, 0)
        elif Delta > 0:
            x1 = RownanieKwadratowe.findX(self.a, self.b, Delta**0.5)
            x2 = RownanieKwadratowe.findX(self.a, self.b, -(Delta**0.5))
            return f"x1={x1},x2={x2}"


r2 = RownanieKwadratowe(2, 2, 2)
print(r2.Rozwiaz(),"\n")

# -------

def getNWD(a, b):
    while (b):
        r = a % b
        a = b
        b = r
    return a


def getNWW(a, b):
    return a*b//getNWD(a, b)

class Ulamek:
    def __init__(self, licznik, mianownik):
        if mianownik == 0:
            print("Pamiętaj cholero, nie dziel przez zero! :D")
            # żartobliwe powiedzenie polskich matematyków 👆
            return
        if not licznik - int(licznik) == 0 or not mianownik - int(mianownik) == 0:
            print("Proszę, utwórz ułamek z liczb całkowitych :)")
            return

        self.licznik = licznik
        self.mianownik = mianownik

    @staticmethod
    def dodaj(a, b):
        NWW = getNWW(a.mianownik, b.mianownik)
        newA = a.licznik * NWW//a.mianownik
        # rozszerzanie ułamków do wspólnego mianownika
        newB = b.licznik * NWW//b.mianownik
        wynik = Ulamek(newA+newB, NWW)
        wynik.Skroc()
        return wynik

    @staticmethod
    def odejmij(a, b):
        NWW = getNWW(a.mianownik, b.mianownik)
        newA = a.licznik * NWW//a.mianownik
        # rozszerzanie ułamków do wspólnego mianownika
        newB = b.licznik * NWW//b.mianownik
        wynik = Ulamek(newA-newB, NWW)
        wynik.Skroc()
        return wynik

    @staticmethod
    def mnoz(a, b):
        wynik = Ulamek(a.licznik*b.licznik, a.mianownik*b.mianownik)
        wynik.Skroc()
        return wynik

    @staticmethod
    def dziel(a, b):
        if not b.licznik == 0:
            return Ulamek.mnoz(a, Ulamek(b.mianownik, b.licznik))
        else:
            print("Pamiętaj cholero, nie dziel przez zero! :D")

    def Skroc(self):
        NWD = getNWD(self.licznik, self.mianownik)
        self.licznik //= NWD
        self.mianownik //= NWD

    def Show(self):
        print(f"{int(self.licznik)}\n—\n{int(self.mianownik)}\n")


u1 = Ulamek(6, 20)
print("a:")
u1.Show()

u2 = Ulamek(3, 5)
print("b:")
u2.Show()

u3 = Ulamek.dodaj(u1, u2)
print("a+b:")
u3.Show()

u3 = Ulamek.odejmij(u1, u2)
print("a-b:")
u3.Show()

u3 = Ulamek.mnoz(u1, u2)
print("a*b:")
u3.Show()


u3 = Ulamek.dziel(u1, u2)
print("a/b:")
u3.Show()
