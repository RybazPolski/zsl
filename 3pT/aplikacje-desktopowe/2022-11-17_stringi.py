# zad 1
# letters = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F']
# n = int(input("Podaj liczbę w systemie dziesiętnym:\n> "))
# p = int(input("Podaj podstawę systemu liczbowego dla którego chcesz wykonać konwersję:\n> "))

# x = ''
# while n!=0:
#     r = n%p
#     x=str(letters[r])+x
#     n//=p
# print(x)

# zad 2
# n = input("Podaj liczbę w systemie binarnym:\n> ")
# x = 0
# for i in range(len(n)):
#     x += int(n[len(n)-1-i])*(2**i)
# print(x)

# zad 3
pesel = input("Podaj numer PESEL:\n> ")

if(len(pesel)==11):

    yy = int(pesel[0:2])
    mm = int(pesel[2:4])
    dd = int(pesel[4:6])
    if(mm<=12):
        year = 1900+yy
    else:
        year = 2000+yy
    if(int(pesel[9])%2==0):
        gender = 'łymyn'
    else:
        gender = 'gigachad'

    w = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
    S = 0
    for i in range(len(w)):
        S += int(pesel[i])*w[i]
    S %=10
    checksum=(10-S)%10


if len(pesel)!=11:
    print("Błąd. Numer PESEL powinien mieć 11 znaków.")
elif (mm%20 < 1 or mm%20 > 12):
    print("Błąd. Niewłaściwy miesiąc zakodowany w numerze PESEL.")
elif dd < 1 or (mm==2 and dd > 28 and year%4!=0) or (mm==2 and dd > 29 and year%4==0) or (mm in [1, 3, 5, 7, 8, 10, 12] and dd > 31) or (mm in [4, 6, 9, 11] and dd > 30):
    print("Błąd. Niewłaściwy dzień zakodowany w numerze PESEL.")
elif(checksum!=int(pesel[10])):
    print("Błąd. Niewłaściwa suma kontrolna zakodowana w numerze PESEL.")
else:
    print("Data urodzenia:",str(dd)+"."+str(mm%20)+"."+str(year))
    print("Płeć:",gender)