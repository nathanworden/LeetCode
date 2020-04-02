// Problem
// Define a function where a positive integer is put through a process that ends in 1 (or does not)

// The process:
// Replace the number by the sum of the squares of its digits
// repeat the process until it equals 1.

// Question: How will we know when to stop an infinite loop?

// Examples / Test Cases
// Input: 249
// Explination:
// 2**2 + 4**2 + 9**2 = 101
// 1**2 + 0**2 + 1**2 = 2
// 2**2 = 4
// 4**2 = 16
// 1**2 + 6**2 = 37
// 3**2 + 7**2 = 58
//               89
//               145
//               42
//               20
//               4

// If a sum is ever repeated, that means it is in a loop.
    // return false


// Data Structure
// Array to store past nums

// Algorithm
// Turn the number into a string
// split the string
// transform the elements back into numbers and square them
// Sum the elements
// if the sum is 1, return true
// if the sum alread exists in sums array, return false
// if the sum is not 1, store it and repeat the process

var isHappy = function(n) {
  let sums = [];
  do {
    let strNum = String(n);
    let strArr = strNum.split('');
    let squares = strArr.map(ele => Number(ele) ** 2)
    n = squares.reduce((acc, ele) => acc + ele);
    if (n === 1) {return true}
    if (sums.includes(n)) {return false}
    sums.push(n);
  } while (n !== 1);
}


console.log(isHappy(249)); // false
console.log(isHappy(19)); // true














