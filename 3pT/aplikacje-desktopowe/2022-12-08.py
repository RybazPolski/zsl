import easygui as eg
import random as random

options = ['Tak','Nie','Czasami']

response = eg.buttonbox("Lubisz grać w gry komputerowe?", title='Pytanie',choices=options)

eg.msgbox("Wybrano odpowiedź: "+response,"Twoja odpowiedź")

options = ['Wcześnie','Późno']
response = eg.buttonbox("O której godzinie chodzisz spać?",choices=options,title='Sen')
eg.msgbox(response*10,"Twoja odpowiedź")

eg.enterbox("Podaj swoją ulubioną piosenkę:","Piosenka")
eg.msgbox("Pięknie")

eg.enterbox("Podaj swoją ulubioną liczbę:","Liczba")
eg.msgbox("A moja to "+str(random.randint(1,100)))

rand1 = random.randint(1,100)
rand2 = random.randint(1,100)
response = eg.enterbox(f"{rand1} x {rand2} = ","Pytanie")
eg.msgbox("Brawo, podałeś dobry wynik" if float(response)==rand1*rand2 else f"Niestety, podałeś zły wynik. Poprawna odpowiedź to {rand1*rand2}")
