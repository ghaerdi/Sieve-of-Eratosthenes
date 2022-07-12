pub fn primes(n: usize) -> Vec<usize> {
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

    for (i, &item) in booleans.iter().enumerate().take(n).skip(2) {
        if item {
            primes.push(i);
        }
    }

    primes
}

fn main() {
    primes(40_000_000);
}
