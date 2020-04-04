// Problem 
// Given an array of nums, write a function to move all 0s to the end of it while maintaining the relative order of the non-zero elements.

// Rules: You must do this in place.
// Minimize the total number of operations

// Examples
// console.log(move_zeroes([0,1,0,3,12]) ) // [1,3,12,0,0]
// console.log(move_zeroes([13, 1, 2, 0, 14])  //[0, 13, 1, 2, 14]
// console.log(move_zeroes([]) // 

// Data Structure
// Array in place

// Algorithm
// Iterate throug the array and count the number of zeroes.
// Delete the zeroes out of the array
// Add the 'count' number of zeroes to the front of the array


function move_zeroes(arr) {
  let numZeroes = 0;
  for (let i = 0; i < arr.length; i += 1) {
    if (arr[i] === 0) {numZeroes += 1}
  }

  while (arr.indexOf(0) > -1) {
    let idx = arr.indexOf(0);
    arr.splice(idx, 1);
  }

  for (let i = 0; i < numZeroes; i += 1) {
    arr.push(0);
  }

  return arr;
}


console.log(move_zeroes([0,1,0,3,12])); // [1,3,12,0,0]
console.log(move_zeroes([13, 1, 2, 0, 14]));  //[13, 1, 2, 14, 0]
console.log(move_zeroes([])) // 