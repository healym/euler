var fibs = [1,1,2,3,5];

var current = 5;
var fib_ind = 4;
var total = 0;

while(current < 4000000) {
 current += fibs[fib_ind - 1];
 fib_ind++;
 fibs.push(current);
}

for(i = 0; i< fibs.length; i++) {
  total += fibs[i];
}

console.log(total);
return total;
