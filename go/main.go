package main

import (
	"math"
)

func primes(n int) (primes []int){
	limit := int(math.Sqrt(float64(n)))
	booleans := make([]bool, n)

	for i := 2; i <= limit; i++ {
		if !booleans[i] {
			for j := i * i; i < n; i += j {
				booleans[j] = true
			}
		}
	}

	for i := 2; i < n; i++ {
		if !booleans[i] {
			primes = append(primes, i)
		}
	}

	return
}

func main() {
	primes(40_000_000)
}
