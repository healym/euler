const number = 600851475143

function get_prime_factors(num) {
  var factors = [];
  var current = 2;
  while(current <= num && num != 1) {
    if(num % current == 0) {
      factors.push(current);
      num /= current;
    }
    else {
      current ++;
    }
  }
  return factors;
}

factors = get_prime_factors(600851475143);
console.log(factors[factors.length - 1]);
return factors[factors.length - 1];
