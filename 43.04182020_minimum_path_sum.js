// Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

// Note: You can only move either down or right at any point in time.

// Example:

// Input:
// [
//   [1,3,1],
//   [1,5,1],
//   [4,2,1]
// ]
// Output: 7
// Explanation: Because the path 1→3→1→1→1 minimizes the sum.

// Rules: You can only move down or right at any point in time


// Input: An Array of Arrays
// Output: Integer sumbolizing the minimum sum of all numbers along its path.


// Data Strcuture
// Array

// Algorithm
// Run all possible paths. Sum each path. Keep the shortest one.
// 1. Write a function which, given an array of arrays and a current sum, looks at the element to the right and below it and returns the smaller  


var minPathSum = function(grid) {
    
};




console.log(minPathSum([
  [1,3,1],
  [1,5,1],
  [4,2,1]
])); // 7

console.log(minPathSum([
  [1,1,1],
  [1,5,1],
  [4,2,1]
]));  // 5

console.log(minPathSum([
  [1,3,5],
  [1,5,1],
  [4,2,1]
]));  // 9

console.log(minPathSum([
  [1,0,11],
  [1,0,0],
  [4,21,1]
]));  // 2

console.log(minPathSum([
  [1,3,0,0,0,0,0],
  [0,0,0,5,2,0,7],
  [4,2,1,6,6,0,1]
]));  // 9

console.log(minPathSum([
  [1,6,7,10,13,18,19],
  [2,5,8,11,14,17,20],
  [3,4,9,12,15,16,21]
]));  // 83




