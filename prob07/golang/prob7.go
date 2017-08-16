package main

import "fmt"

func primes_below(number int) []int {
  primes := []int{};
  for i := 2; i < number; i++ {
    prime := true;
    for _,element := range primes {
      if i % element == 0 {
        prime = false;
      }
    }
    if prime == true {
      primes = append(primes,i)
    }
  }
  return primes;
}

func main() {
  primes := primes_below(10000);
  fmt.Println(primes[1000]);
}
