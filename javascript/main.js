function sieveOfEratosthenes(n) {
  const booleans = new Array(n).fill(true);
  const limit = Math.sqrt(n);
  const primes = [];

  for (let i = 2; i <= limit; i++)
    if (booleans[i])
      for (let j = i * i; j < n; j += i)
        booleans[j] = false;

  for (let i = 2; i < n; i++)
    if (booleans[i])
      primes.push(i);

  return primes;
}

const primes = sieveOfEratosthenes(40_000_000);
console.log(`primes len: ${primes.length}`);
console.log(`last prime: ${primes.at(-1)}`);
