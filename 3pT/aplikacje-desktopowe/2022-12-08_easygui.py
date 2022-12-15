import easygui as eg
import random as random

#zad1
options = ['Tak','Nie','Czasami']
response = eg.buttonbox("Lubisz grać w gry komputerowe?", title='Pytanie',choices=options)
#zad2
eg.msgbox("Wybrano odpowiedź: "+response,"Twoja odpowiedź")

#zad3
options = ['Wcześnie','Późno']
response = eg.buttonbox("O której godzinie chodzisz spać?",choices=options,title='Sen')
eg.msgbox(response*10,"Twoja odpowiedź")

#zad4
eg.enterbox("Podaj swoją ulubioną piosenkę:","Piosenka")
eg.msgbox("Pięknie")

#zad5
eg.enterbox("Podaj swoją ulubioną liczbę:","Liczba")
eg.msgbox("A moja to "+str(random.randint(1,100)))

#zad6
rand1 = random.randint(1,100)
rand2 = random.randint(1,100)
response = eg.enterbox(f"{rand1} x {rand2} = ","Pytanie")
eg.msgbox("Brawo, podałeś dobry wynik" if float(response)==rand1*rand2 else f"Niestety, podałeś zły wynik. Poprawna odpowiedź to {rand1*rand2}")


#zad7
pesel = eg.enterbox("Podaj numer PESEL", title='PESEL')
if(len(pesel)==11):
    yy = int(pesel[0:2])
    mm = int(pesel[2:4])
    dd = int(pesel[4:6])
    if(mm<=12):
        year = 1900+yy
    else:
        year = 2000+yy
    if(int(pesel[9])%2==0):
        gender = 'kobieta'
    else:
        gender = 'mężczyzna'
    w = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
    S = 0
    for i in range(len(w)):
        S += int(pesel[i])*w[i]
    S %=10
    checksum=(10-S)%10
if len(pesel)!=11:
    eg.msgbox("Błąd. Numer PESEL powinien mieć 11 znaków.")
elif (mm%20 < 1 or mm%20 > 12):
    eg.msgbox("Błąd. Niewłaściwy miesiąc zakodowany w numerze PESEL.")
elif dd < 1 or (mm==2 and dd > 28 and year%4!=0) or (mm==2 and dd > 29 and year%4==0) or (mm in [1, 3, 5, 7, 8, 10, 12] and dd > 31) or (mm in [4, 6, 9, 11] and dd > 30):
    eg.msgbox("Błąd. Niewłaściwy dzień zakodowany w numerze PESEL.")
elif(checksum!=int(pesel[10])):
    eg.msgbox("Błąd. Niewłaściwa suma kontrolna zakodowana w numerze PESEL.")
else:
    eg.msgbox("Data urodzenia: "+str(dd)+"."+str(mm%20)+"."+str(year)+"\nPłeć: "+gender)

#zad8
a = float(eg.enterbox("Podaj a", title='Dzielenie'))
b = float(eg.enterbox("Podaj b", title='Dzielenie'))
eg.msgbox(f"{a}/{b} = {a/b}", "Odpowiedź") if b!=0 else eg.msgbox("Nie wolno dzielić przez zero","Błąd")
