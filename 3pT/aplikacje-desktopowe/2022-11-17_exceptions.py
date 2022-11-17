# zad 1
success=False
while not success:
    success = True
    try:
        x = int(input("Proszę wprowadzić liczbę:\n> "))
    except ValueError:
        print("Ups! to nie jest poprawna liczba! Spróbuj jeszcze raz...")
        success = False

# zad 2
# lista = [1, 2, 3, 5, 7, 21, 543, 2, 0]
# suma = 0
# for i in range(20):
#     try:
#         suma += lista[i]
#     except IndexError:
#         suma += 0
# print(suma)

# zad 3
# lista = ['1234', 3j+7, 'sowa', 'lis', '1001']
# wyniki = []
# for index in range(7):
#     try:
#         wyniki.append(int(lista[index]))
#     except IndexError: 
#         print("Nie znaleziono indeksu",index,"w liście!")
#     except TypeError:
#         print("Użyto nieprawidłowego typu!")
#     except ValueError:
#         print("Użyto nieprawidłowej wartości!")

# print("Dobranoc",wyniki)