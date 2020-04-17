// Problem:
// Given an array nums of n integers where n > 1, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i]

// Input: Array of integers
// Output: transfomed array

// Solve without division, and in O(n)

// Data Structure
// Array

// Algorithm
// 1. Look At each number (current number)
// 2. Multiply every other number together. (product)
// 3. Transform the current number into the product.



var productExceptSelf = function(nums) {
    return nums.map((num, idx, arr) => {
      let sliced = (arr.slice(0, idx)).concat(arr.slice(idx + 1));
      return sliced.reduce((acc, ele) => {
        return acc * ele;
      }, 1);
    });
};

console.log(productExceptSelf([1,2,3,4])); // [24,12,8,6]
console.log(productExceptSelf([1, 1])); // [1, 1]
console.log(productExceptSelf([9, 1])); // [1, 9]
console.log(productExceptSelf([0, 1, 2])); // [2, 0, 0]
console.log(productExceptSelf([2, 3, 4, 9])); // [108, 72, 54, 24]