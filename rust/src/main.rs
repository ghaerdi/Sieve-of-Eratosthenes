fn sieve_of_eratosthenes(n: usize) -> Vec<usize> {
    let mut booleans = vec![true; n];
    let mut primes = vec![];
    let limit = (n as f32).sqrt() as usize;

    for i in 2..limit {
        if booleans[i] {
            let mut j = i * i;
            while j < n {
                booleans[j] = false;
                j += i;
            }
        }
    }

    for i in 2..n {
        if booleans[i] {
            primes.push(i);
        }
    }

    primes
}

fn main() {
    let primes = sieve_of_eratosthenes(40_000_000);
    println!("primes len: {}", primes.len());
    println!("last prime: {}", primes.last().unwrap());
}
