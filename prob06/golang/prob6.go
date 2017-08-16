package main

import "fmt"

func main() {
  sqsum := 0;
  sumsq := 0;
  for i := 0; i <= 100; i++ {
    sqsum += i;
    sumsq += i*i;
  }
  sqsum *= sqsum;
  fmt.Println(sqsum - sumsq);
}
