print('\n======== ZAD 1 ========')
zwierzaki=['pies']
zwierzaki.append('jesiotr')
zwierzaki.append('surykatka')
zwierzaki.append('wiewiórka')
print(zwierzaki)
zwierzaki.remove('jesiotr')
print(zwierzaki[1])

print("\n======== ZAD 2 ========")
kolory = ['Biel','Biały','Śnieżny','Śmietanowy','Mleczny']
kolor = input("Podaj kolor:\n> ")
if kolor in kolory:
    print("Kolor znajduje się pod indexem",kolory.index(kolor))
else:
    print("Kolor znajduje się pod indexem 404")

print("\n======== ZAD 3 ========")
lista=['lancuch',2,10**10,1+3j]
for x in lista:
    print(type(x))

print("\n======== ZAD 4 ========")
print("podaj 5 różnych liczb:")
liczby = []
while len(liczby)<5:
    liczba = float(input(str(len(liczby)+1)+') '))
    if liczba in liczby:
        print("Ta liczba już została dodana!")
    else:
        liczby.append(liczba)
print(liczby)


print("\n======== ZAD 5 ========")
owoce = {'apple':'jabłko','banana':'banan','pineapple':'ananas','berry':'jagoda','strawberry':'truskawka','raspberry':'malina','orange':'pomarancz','lemon':'cytryna','limelemon':'limonka','chocolate':'czekolada'}
print(len(owoce))
print(owoce)
print(owoce['apple'])

print("\n======== ZAD 6 ========")
kursy = {'AFN':0.054,'ALL':0.040,'DZD':0.034,'AOA':0.0099,'ARS':0.031,'AMD':0.012,'AWG':2.69,'AUD':3.05,'AZN':2.84,'BSD':4.80,'BHD':12.83,'BBD':2.38,'BDT':0.047,'BYN':1.90,'BZD':2.38,'BMD':4.83,'BTN':0.058,'BOB':0.69,'EUR':4.71,'USD':4.83}
print(len(kursy))
print(kursy)