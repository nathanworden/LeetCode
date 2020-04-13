//Given a string number, convert it to an integer.
// Rules: 
// Discards as many whitespace characters as necessary until the FIRST non -whitespace character is found.
// Can have an optional + or minus sign
// String can contain additional characters after those that form the integer number. Ignore these
// If the first sequence of non-whitespace characters in str is not a vlaid integer return a 0;
// If str is empty or it contains only whitespace characters, return 0;

// Data  Structure
// String
// Array

// Algorithm
// Create an empty result string
// Guard Clause: if there are no numbers in the string return 0
// Iterate through the characters of string
// If the character is a letter return the output string
// If the character is a space, move on to the next character
// If the character is a '+', move on to the next character (unless a number has already occured. If a number has occured, the + terminates the iteration)
// If the character is a '-', note this, and move on to the next character (unless a number has alread occured. If a number has occured, the + terminates the iteration)
// If the character is a number, concatenate it to the result string
// If the output strings length is greater than 0, than anything other than another number will terminate the iteration.

// Once the iteration is terminated, coerce the string to a number
// Guard Clase: If the number is greater than 91283472332 or less than -91283472332, return the apprpriate number 2147483648 or -2147483648
// If the '-' occured, return the negative of the number
// Otherwise return the number

var myAtoi = function(str) {
  let result = '';
  let signCount = 0;
  let negative = false;
  // if (!str.match(/[\d ]/)) {return 0}
  for (letter of str) {
    if (letter.match(/([a-zA-Z])/)) {
      break
    } else if (letter === " ") {
      if (result.match(/\d/) || signCount > 0) {break}
      continue;
    } else if (letter === "+" ) {
      if (result.match(/\d/) || signCount > 0) {break}
      signCount += 1;
    } else if (letter === "-") {
      if (signCount > 0 || result.match(/\d/)) {break}
      signCount += 1;
      negative = true;
    } else if (letter === ' ') {
      if (result.match(/\d/) || signCount > 0) {break}
    } else {
      result += letter;
    }
  }

  result = Number(result);
  if (negative) {
    if (result > 0) {result =  -result}
  }
  if (result <= -2147483648) {return -2147483648}
  if (result >= 2147483648) {return 2147483647}
  return result;
};

console.log(myAtoi("42") === 42); 
console.log(myAtoi("++42") === 0); 
console.log(myAtoi("+42") === 42);
console.log(myAtoi("   -42") === -42);
console.log(myAtoi("4193 with words") === 4193);
console.log(myAtoi("-4193 with words") === -4193);
console.log(myAtoi("-4193d8og words") === -4193);
console.log(myAtoi("words and 987") === 0);
console.log(myAtoi("-91283472332") === -2147483648);
console.log(myAtoi("91283472332") === 2147483647);
console.log(myAtoi("   ") === 0);
console.log(myAtoi("   +0 123") === 0);
console.log(myAtoi("2147483648") === 2147483647);
console.log(myAtoi("-2147483649") === -2147483648)
console.log(myAtoi("-   234") === 0)
console.log(myAtoi("0-1") === 0)

