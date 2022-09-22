print('+ dodawanie\n- odejmowanie\n* mnozenie\n: dzielenie')
action = input('Podaj jakie dzialanie chcesz wykonać\n> ')
a = int(input('Podaj pierwsza liczbe\n> '))
b = int(input('Podaj druga liczbe\n> '))

#match action:
#	case '+':
#		print('Wynik: '+(a+b))
#	case '-':
#		print('Wynik: '+(a-b))
#	case '*':
#		print('Wynik: '+(a*b))
#	case ':':
#		if(b==0):
#			print('Pamietaj cholero, nie dziel przez zero!!!!!1 >:C')
#		else:
#			print('Wynik: '+(a/b))
#	case '/':
#		if(b==0):
#			print('Pamietaj cholero, nie dziel przez zero!!!!!1 >:C')
#		else:
#			print('Wynik: '+(a/b))
#	case ':)':
#		print('Hello World :)')

if(action=='+'):
	print('Wynik: '+str(a+b))
elif(action=='-'):
	print('Wynik: '+str(a-b))
elif(action=='*'):
	print('Wynik: '+str(a*b))
elif(action==':' or action=='/'):
	if(b==0):
		print('Pamietaj cholero, nie dziel przez zero!!!!!1 >:C')
	else:
		print('Wynik: '+str(a/b))
elif(action==':)'):
	print('Hello World :)')
else:
	print('Niewlasciwa opcja')
