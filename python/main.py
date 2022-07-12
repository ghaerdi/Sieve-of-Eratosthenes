import math

def primes(n):
    booleans = [True for i in range(n)]
    limit = int(math.sqrt(n))
    primes = []

    for i in range(2, limit):
        if booleans[i]:
            for j in range(i * i, n):
                booleans[j] = False

    for i in range(2, n):
        if booleans[i]:
            primes.append(i)

    return primes

primes(40_000_000)
