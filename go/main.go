package main

import (
	"math"
	"fmt"
)

func sieveOfEratosthenes(n int) (primes []int){
	limit := int(math.Sqrt(float64(n)))
	booleans := make([]bool, n)

	for i := 2; i <= limit; i++ {
		if !booleans[i] {
			for j := i * i; j < n; j += i {
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
	primes := sieveOfEratosthenes(40_000_000)
	primesLen := len(primes)
	fmt.Println(primesLen)
	fmt.Println(primes[0])
	fmt.Println(primes[primesLen-1])
}
