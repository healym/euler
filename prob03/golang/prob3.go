package main

import "fmt"

func main() {
  fmt.Println(largest_prime_factor(600851475143));
}

func largest_prime_factor(num int) int {
  factors := []int{};
  current := 2;

  for ;current <= num && num != 1; {
    if num % current == 0 {
      factors = append(factors,current);
      num /= current;
    } else {
      current ++;
    }
  }
  return factors[len(factors)-1];
}
