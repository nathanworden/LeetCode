// Problem
// Given an integer array nums, find the contiguous subarray which has the largest sum and return its sum

// input: array
// output: integer (the sum of the subarray with the largest sum)

// Examples
// console.log(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]) === 6);
// console.log(maxSubArray([1, 2, 3] === 5)); // or 6?
// console.log(maxSubArray([1, -2, 3] === 3));
// console.log(maxSubArray([-4, -5, -6] === -4)); 
// console.log(maxSubArray([[1, 2, 5, -1, 5] === 11) // or 12?

// Data Structure
// Array

// Algorithm
// Initiate a 'largest sum' variable
// Iterate through each number in the array
// For each number create a subArray which is equal to each number after it in the full array.
// Iterate through the subArray adding to the current number (and accumulating throughout the subArray)
                      // [1]      [2, 5, -1, 5]
                      // [2]      [5, -1, 5]
// Each time you add to the accumulator, compare this to the largest sum variable. If it is more, then replace it as the largest sum variable.
// Return the largest sum variable

// If the subarray has to be smaller than the full array, then the first iteration can't include the last element. Other than that, it can continue as normal.



// var maxSubArray = function(nums) {
//     if (nums.length === 0) {return -2147483648}
//     let largestSum = Math.min(...nums);
//     nums.forEach((num, idx) => {
//       if (largestSum < num) {largestSum = num}
//       let subArr = nums.slice(idx + 1);
//       if (subArr.length === 0) {
//         if (largestSum < num) {largestSum = num}
//       }
//       subArr.reduce((acc, ele) => {
//         acc += ele;
//         if (largestSum < acc) {largestSum = acc}
//         return acc
//       }, num);
//     });

//     return largestSum;
// };

////////////////////////////////////////////////////////////
// function maxSubArray(nums) {
//   var prev = 0;
//   var max = -Number.MAX_VALUE;

//   for (var i = 0; i < nums.length; i += 1) {
//     prev = Math.max(prev + nums[i], nums[i]);
//     max = Math.max(max, prev);
//   }
//   return max;
// }




////////////////////////////////////////////////////////////

var maxSubArray = function(nums) {
  let output = -2147483648
  nums.forEach((num, outerIdx) => {
      let subSums = [];
      let subArr = nums.slice(outerIdx);
      for (number of subArr) {
        subSums.push(number);
        let subTotal = subSums.reduce((acc, ele) => acc + ele);
        subSums = [subTotal];
        if (subSums[0] > output) {
            output = subSums[0];
        }
      }
  });

  return output;
}

// console.log(maxSubArray([-1, -1, -1, -1, 25, -1, -1])) //25
console.log(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]) === 6); //[4,-1,2,1]
console.log(maxSubArray([1, 2, 3]) ===  6);
console.log(maxSubArray([1, -2, 3]) === 3);
console.log(maxSubArray([-4, -5, -6]) === -4); 
console.log(maxSubArray([1, 2, 5, -1, 5]) === 12);
console.log(maxSubArray([9]) === 9);
console.log(maxSubArray([0]) === 0 );
console.log(maxSubArray([]) === -2147483648);









