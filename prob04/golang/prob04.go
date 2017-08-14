package main

import "fmt"
import "strconv"

func main() {
  current := 0;
  for i := 0; i < 1000; i ++ {
    for j := 0; j < 1000; j ++ {
      num := i * j;
      if num > current && strconv.Itoa(num) == Reverse(strconv.Itoa(num)) {
        current = num;
      }
    }
  }

  fmt.Println(current);
}

func Reverse( s string ) string {
    b := make([]byte, len(s));
    var j int = len(s) - 1;
    for i := 0; i <= j; i++ {
        b[j-i] = s[i]
    }

    return string ( b );
}
