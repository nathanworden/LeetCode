// Problem
// Given an integer n, return any array containing n unique integers such that they add up to 0.
// input: An integer
// Output: An array whose elements add up to zero

// Examples

// Data Structure
// Array

// Algorithm
// Initiate an output array
// Divide n by 2 (round down), call it halfed
// Make halfed negative
// While halfed is less than 0, push it and its positive counterpart into output
// Add one and repeat
// If n was odd, push 0 into the output array
// Return the output array

var sumZero = function(n) {
  let output = (n % 2 === 0) ? [] : [0];
  let halfed = -Math.floor(n / 2);
  while (halfed < 0) {
    output.push(halfed, -halfed);
    halfed += 1;
  }
  return output;
};


console.log(sumZero(5)); // [-7,-1,1,3,4]
console.log(sumZero(10)); // [-5, -4, -3, -2, -1, 1, 2, 3, 4, 5]
console.log(sumZero(11)); // [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]