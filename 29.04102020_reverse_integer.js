// Check if the number is less than 0
// If it is, then singed = true
// False otherwise
// Turn the number into a string, reverse it, turn it back into a number/
// Add the sign back if necessary

var reverse = function(num) {
  let signed;
  let str;
  let result;
  if (num < 0) {
    num = Math.abs(num);
    signed = true
  }
  str = String(num);
  str = str.split('').reverse().join('');
  result = Number(str);

  if (result > 2147483647) {return 0}
  if (result < -2147483647) {return 0}

  if (signed) {return -result}
  return result
}

console.log(reverse(123));  //321
console.log(reverse(-123)); // -321
console.log(reverse(120)); // 21
console.log(reverse(0));   // 0
console.log(reverse(1534236469));