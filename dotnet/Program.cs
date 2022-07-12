using System;

List<int> primes(int n)
{
    bool[] booleans = new bool[n + 1];
    List<int> primes = new();
    int limit = Convert.ToInt32(Math.Sqrt(Convert.ToDouble(n)));


    for (int p = 2; p * p <= n; p++)
        if (booleans[p] == false)
            for (int i = p * p; i <= n; i += p)
                booleans[i] = true;

    for (int i = 2; i < n; i++)
        if (booleans[i] == false)
            primes.Add(i);

    return primes;
}

primes(40_000_000);
