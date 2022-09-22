import numpy as np

#prostokąt, kwadrat, równoległobok, romb, trójką
print('1 - prostokat\n2 - kwadrat\n3 - rownoleglobok\n4 - romb\n5 - trojkat\n6 - trapez\n7 - kolo\n8 - deltoid')
f = int(input('Wybierz ktorej figury pole i obwod chcesz obliczyc\n> '))

if(f==1):
	a = float(input('Podaj pierwszy bok prostokatu\n> '))
	b = float(input('Podaj drugi bok prostokatu\n> '))
	print('Pole: '+str(a*b))
	print('Obwod: '+str(a+a+b+b))
elif(f==2):
	a = float(input('Podaj bok kwadratu\n> '))
	print('Pole: '+str(a*a))
	print('Obwod: '+str(a*4))
elif(f==3):
	a = float(input('Podaj pierwszy bok rownolegloboku\n> '))
	b = float(input('Podaj drugi bok rownolegloboku\n> '))
	print('Pole: '+str(a*b))
	print('Obwod: '+str(a+a+b+b))
elif(f==4):
	a = float(input('Podaj bok rombu\n> '))
	h = float(input('Podaj wysykosc rombu\n> '))
	print('Pole: '+str(a*h))
	print('Obwod: '+str(a*4))
elif(f==5):
	a = float(input('Podaj pierwszy bok trojkata\n> '))
	b = float(input('Podaj drugi bok trojkata\n> '))
	c = float(input('Podaj trzeci bok trojkata\n> '))
	
	if(a+b>c and a+c>b and c+b>a):
		p = (a + b + c)/2
		print('Pole: '+str((p*(p-a)*(p-b)*(p-c))**(1/2)))
		print('Obwod: '+str(a+b+c))
	else:
		print('Taki trojkat nie istnieje!')
elif(f==6):
	a = float(input('Podaj pierwszy bok trapezu\n> '))
	b = float(input('Podaj drugi bok trapezu\n> '))
	c = float(input('Podaj trzeci bok trapezu\n> '))
	d = float(input('Podaj czwarty bok trapezu\n> '))
	h = float(input('Podaj wysokosc trapezu\n> '))
	print('Pole: '+str((a+b)*h/2))
	print('Obwod: '+str(a+b+c+d))
elif(f==7):
	r = float(input('Podaj promien kola\n> '))
	print('Pole: '+str(np.pi*r*r))
	print('Obwod: '+str(np.pi*r*2))
elif(f==8):
	a = float(input('Podaj pierwszy bok deltoidu\n> '))
	b = float(input('Podaj drugi bok deltoidu\n> '))
	d1 = float(input('Podaj pierwsza przekatna deltoidu\n> '))
	d2 = float(input('Podaj druga przekatna deltoidu\n> '))
	print('Pole: '+str(d1*d2/2))
	print('Obwod: '+str(a+a+b+b))

