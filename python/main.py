import math


def sieve_of_eratosthenes(n):
    booleans = [True for i in range(n)]
    limit = int(math.sqrt(n))
    primes = []

    for i in range(2, limit):
        if booleans[i]:
            j = i * i
            while j < n:
                booleans[j] = False
                j += i

    for i in range(2, n):
        if booleans[i]:
            primes.append(i)

    return primes


primes = sieve_of_eratosthenes(40_000_000)
print(f"primes len: {len(primes)}")
print(f"last prime: {primes[-1]}")
