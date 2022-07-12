function primes(n) {
  const array = new Array(n).fill(true);
  const limit = Math.sqrt(n);
  const primes = [];

  for (let i = 2; i <= limit; i++)
    if (array[i])
      for (let j = i * i; j < n; j += i)
        array[j] = false;

  for (let i = 2; i < n; i++)
    if (array[i])
      primes.push(i);

  return primes;
}

primes(40_000_000);
