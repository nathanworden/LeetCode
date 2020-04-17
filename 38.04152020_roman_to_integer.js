// Problem: Given a roman numeral convert it to an integer.
// Input: Roman numeral
// Output: integer

// Rules: 4, 9, 40, 90, 400, 900 use subtraction instead of addition.
// The following are special cases:

// Data Structure
// Array

// Algorithm
// Reverse the roman string
        // "CDLIX" => "XILDC"
// Convert Every individual letter into its number value
        // 10 1 50 500  100
// Reduce the array
  // Looking at the current number, if the next number is smaller, subtract it from the current number.
      // if the next numebr is larger, add the two together
        // 10 1 50 500 100
        // 9 50 500 100
        // 59 500 100
        // 559 100
        // 459


//  III => III
// 1 1 1
// 2 1
// 

// "MMMCMXCIX" => XICXMCMMM
// 10 1 100 10 1000 100 1000 1000 1000
// 999 1000 1000 1000
// 1999
// 2999
// 3999

const convert = {
"I": 1, "IV": 4, "V": 5, "IX": 9, "X": 10, "XL": 40, "L": 50, "XC": 90, "C": 100, "CM": 400, "D": 500, "DM": 900, "M": 1000,
}

var romanToInt = function(s) {
  let revSplit = s.split('').reverse();
  revSplit = revSplit.map(letter => convert[letter]);
  return revSplit.reduce((acc, ele, idx, arr) => {
    if (ele === 1 && arr[idx - 1] === 1) {
      return acc += 1;
    } else if (arr[idx - 1] === ele) {
      return acc + ele;
    } else if (acc <= ele) {
      return ele + acc; 
    } else if (acc > ele) {
      return acc - ele;
    }
  }, 0);
};

console.log(romanToInt("III")); // 3
console.log(romanToInt("IV"));  // 4
console.log(romanToInt("IX"));  // 9
console.log(romanToInt("LVIII"));  // 58
console.log(romanToInt("MCMXCIV")); // 1994
console.log(romanToInt("MMMCMXCIX"));  // 3999
console.log(romanToInt("CMLVIII"));   // 958
console.log(romanToInt("CDLIX"));    // 459
console.log(romanToInt("CMXLIV")); // 944
console.log(romanToInt("MII"));  // 1002
console.log(romanToInt("DCXXI")); // 621



