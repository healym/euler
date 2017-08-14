package main

import "fmt"

func main() {
  fmt.Println(fibsum(4000000));
}

func fibsum(num int) int {
  fibs := []int{1,2,3};
  var sum int;

  for ; fibs[len(fibs) - 1] + fibs[len(fibs) - 2] < 4000000; {
    fibs = append(fibs,fibs[len(fibs) - 1] + fibs[len(fibs) - 2]);
  }

  for i:= 0; i < len(fibs); i++ {
    sum += fibs[i];
  }

  return sum;
}
