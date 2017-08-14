package main

import "fmt"

func main() {
  var works bool = false;
  var number int = 2520;

  for ;works == false; {
    works = true;
    number++;
    for i := 2; i<= 20; i++ {
      if number % i != 0 {
        works = false;
      }
    }
  }

  fmt.Println(number);
}
