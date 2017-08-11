var current_max = 0;

for (i=100;i<1000;i++) {
  for (j=100;j<1000;j++) {
    var current = i * j;
    current_string = current.toString()
    reverse_string = current_string.split("").reverse().join("");
    if (current_string == reverse_string && current > current_max) {
      current_max = current;
    }
  }
}

console.log(current_max)
return current_max;
