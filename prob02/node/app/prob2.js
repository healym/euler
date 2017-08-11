var fibs = [1,2,3,5];

var current = 5;
var fib_ind = 3;
var total = 0;

while(current < 4000000) {
 current += fibs[fib_ind - 1];
 fib_ind++;
 if (current < 4000000) fibs.push(current);
}

for(i = 0; i< fibs.length; i++) {
  if ( fibs[i] % 2 == 0) total += fibs[i];
}

console.log(fibs);
console.log(total);
return total;
