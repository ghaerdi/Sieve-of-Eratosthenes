List<int> sieveOfEratosthenes(int n)
{
    int limit = Convert.ToInt32(Math.Sqrt(Convert.ToDouble(n)));
    bool[] booleans = new bool[n + 1];
    List<int> primes = new();

    for (int i = 2; i <= limit; i++)
        if (!booleans[i])
            for (int j = i * i; j < n; j += i)
                booleans[j] = true;

    for (int i = 2; i < n; i++)
        if (!booleans[i])
            primes.Add(i);

    return primes;
}

List<int> primes = sieveOfEratosthenes(40_000_000);
Console.WriteLine(primes.Count);
Console.WriteLine(primes.First());
Console.WriteLine(primes.Last());
