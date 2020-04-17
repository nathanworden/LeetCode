// Problem:
// Convert Integers to Roman Numerals

const convert = {
  1: "I",
  2: "II",
  3: "III",
  4: "IV",
  5: "V",
  6: "VI",
  7: "VII",
  8: "VIII",
  9: "IX",
  10: "X",
  50: "L",
  100: "C",
  500: "D",
  1000: "M",
}

var intToRoman = function(num) {
  let splitted =  String(num).split('').reverse();
  return splitted.map((num, idx) => {
    if (idx === 0) {
      return convert[num] || '';
    } else {
      return twoDigit(num, idx);
    }
  }).reverse().join('');
}

function twoDigit(num, exp) {
  n = Number(num);
  if (n <= 3) {return convert[10**exp].repeat(n)}
  if (n === 4) {return convert[10**exp] + convert[5 * 10**exp]}
  if (n === 5) {return convert[5 * 10**exp]}
  if (n <= 8) {return convert[5 * 10**exp] + convert[10**exp].repeat(n - 5)}
  if (n === 9) {return convert[10**exp] + convert[10 * 10**exp]}
}

////////////////////////////////////////////////////////////
// Other student answer:

// Create an Object with letters as keys and numbers as values.
// Do 1, 4, 5, and 9 for 1s, 10s and 100s. (And just 1 for 1000s.)
// Initialize an empty result string.
// Iterate through each pair in your object.
// For each pair take the integer division result of the input number divided by current value in the object.
// The input number, for example 49, divided by the values in the object will be 0 until in value in the object is smaller than the input number.
// For example 49 / 1000 = 0. 
// 49 / 900 = 0.
// 49 / 500 = 0.
// All the way until 10. 49 / 10 = 4.
// Then we add to the result string.

var intToRoman = function(num) {
  const convert = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 };
  // const convert = { 1000: 'M', 900: 'CM', 500: 'D', 400: 'CD', 100: 'C', 90: 'XC', 50: 'L', 40: 'XL', 10: 'X', 9: 'IX', 5: 'V', 4: 'IV', 1: 'I' };
  // const convert = { 1: 'I', 4: 'IV', 5: 'V', 9: 'IX', 10: 'X', 40: 'XL', 50: 'L', 90: 'XC', 100: 'C', 400: 'CD', 500: 'D', 900: 'CM', 1000: 'M',};
  let result = '';
  Object.entries(convert).forEach(([letter, n]) => {
    result += letter.repeat(Math.floor(num / n));
    num %= n;
  });
  return result;
  }

console.log(intToRoman(3)     === "III");       
console.log(intToRoman(4)     === "IV");
console.log(intToRoman(9)     === "IX");
console.log(intToRoman(10)    === "X");
console.log(intToRoman(13)    === "XIII");
console.log(intToRoman(14)    === "XIV");
console.log(intToRoman(15)    === "XV");
console.log(intToRoman(16)    === "XVI");
console.log(intToRoman(19)    === "XIX");
console.log(intToRoman(20)    === "XX");
console.log(intToRoman(44)    === "XLIV");
console.log(intToRoman(49)    === "XLIX");
console.log(intToRoman(55)    === "LV");
console.log(intToRoman(65)    === "LXV");
console.log(intToRoman(76)    === "LXXVI");
console.log(intToRoman(88)    === "LXXXVIII");
console.log(intToRoman(94)    === "XCIV");
console.log(intToRoman(99)    === "XCIX");
console.log(intToRoman(102)   === "CII");
console.log(intToRoman(499)   === "CDXCIX");
console.log(intToRoman(542)   === "DXLII");
console.log(intToRoman(999)   === "CMXCIX");
console.log(intToRoman(1000)  === "M");
console.log(intToRoman(2449)  === "MMCDXLIX");
console.log(intToRoman(2059)  === "MMLIX");
console.log(intToRoman(3999)  === "MMMCMXCIX");



