import math as m

def isPrime(a):
    if a<2:
        return 0
    elif a==2:
        return 1
    else:
        if a%2==0:
            return 0
        else:
            for i in range(3,m.ceil(a**0.5)):
                if a%i==0:
                    return 0		
            return 1

M = int(input("Podaj M:\n> "))
N = int(input("Podaj N:\n> "))
primes = []

for i in range(M,N+1):
    if isPrime(i):
        primes.append(i)

for i in range(0,len(primes)-1):
    if(primes[i]+2==primes[i+1]):
        print(primes[i],"i",primes[i+1])