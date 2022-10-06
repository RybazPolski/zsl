import random as r

correct = 0

for i in range(1,11):

	n1 = r.randint(1, 10)
	n2 = r.randint(1, 10)
	print(n1,"x",n2)
	result = n1*n2
	answer = int(input("Podaj wynik iloczynu wylosowanych liczb:\n> "))

	if(answer==result):
		correct += 1

	while(not answer==result):
		answer = int(input("Zle. Podaj wynik iloczynu wylosowanych liczb:\n> "))
		
	print("Brawo, podales dobry wynik")

if correct<4:
	print("Ocena koncowa: niedostateczny")
elif correct==4:
	print("Ocena koncowa: dopusczajacy")
elif correct==5 or correct==6:
	print("Ocena koncowa: dostateczny")
elif correct==7 or correct==8:
	print("Ocena koncowa: dobry")
elif correct==9:
	print("Ocena koncowa: bardzo dobry")
elif correct==10:
	print("Ocena koncowa: celujacy")
