package main

import "fmt"

func main() {
  var nums []int;
  sum := 0;
  for i := 0; i < 1000; i ++ {
    if (i % 3 == 0 || i % 5 == 0) {
      nums = append(nums,i);
    }
  }
  for i := 0; i < len(nums); i++ {
    sum += nums[i];
  }
  fmt.Println(sum);
}
