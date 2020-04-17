// Problem
// Given an array or integers, find all unique triplets in the array which gives the sum of zero.

// Rules:
// The soution set must not contain duplicate triplets

// Example

// Data Structure
// Array

// Algorithm
// Look at each set of two numbers
// [-1, 0]
// [0, 1]
// [1, 2]
// [2, -1]
// [-1, -4]
//  Add every other number in the array to the duo
// [-1, 0]  => [-1, 0, 1], [-1, 0, 2], [-1, 0, -1], [-1, 0, -4]
// [0, 1]   => [0, 1, 2], [0, 1, -1], [0, 1, -4], [0, 1, -1]
// [1, 2]   => [1, 2, -1], [1, 2, -4], [1, 2, -1], [1, 2, 0]
// [2, -1]  => [2, -1, -4], [2, -1, -1], [2, -1, 0], [2, -1, 1]
// [-1, -4] => []
// If their sum is 0,
// [-1, 0]  => [0], [1], [-2], [-5]
// [0, 1]   => [3], [0], [-3], [0]
// [1, 2]   => [2], [1], [2], [3]
// [2, -1]  => [-3], [0], [1], [2]
// [-1, -4] => []
// ... push them into the output array
// [[-1, 0, 1], [0, 1, -1] [0, 1, -1], [2, -1, -1]]
// Sort each array
// [[-1, 0, 1], [-1, 0, 1], [-1, 0, 1], [-1, -1, 2]]
// For each subarray check and see if all the elements match any other array already in the final output array. If they are the same, skip, if they are different, push it into the final output array.


// Code
// function threeSum(arr) {
//   let output = [];
//   arr.forEach((num, idx, array) => {
//     let currentSubArr = [num, array[idx + 1]];
//     let everyOtherNum = array.slice(0, idx).concat(arr.slice(idx + 2));
//     let zeroTrios = [];
//     if (idx !== arr.length - 1) {
//       everyOtherNum.forEach(single => {
//         let trio = currentSubArr.concat(single);
//         if (trio.reduce((acc, ele) => acc + ele) === 0) {zeroTrios.push(trio)}
//       });


//     }

//       zeroTrios.forEach(trio => {
//         if (!trioAlreadyInOutput(trio, output)) {
//           output.push(trio)
//         }
//       });
//   }); 

//   return output;
// }

// Create an array of arrays of every possible set of 3 combinations of the input array.

// function threeSum(arr) {

// }

// function trioAlreadyInOutput(trio, output) {
//   for (let i = 0; i < output.length; i += 1) {
//     let subOutput = output[i];
//     if (same(subOutput, trio)) {return true};
//   }

//   return false;
// }

// function same(subOutput, trio) {
//   let count = 0;

//   let sortedSubOutput = subOutput.sort((a, b) => {
//     if (a < b) {return 1}
//     else if (a > b) {return -1}
//     else if (a === b) {return 0}
//   });

//   let sortedTrio = trio.sort((a, b) => {
//     if (a < b) {return 1}
//     else if (a > b) {return -1}
//     else if (a === b) {return 0}
//   });

//   for (let i = 0; i < sortedSubOutput.length; i += 1) {
//     if (sortedSubOutput[i] === sortedTrio[i]) {count += 1}
//   }
//   return count === 3 ? true : false
// }


/// Student answer
function threeSum(nums) {
  let results = [];
  if (nums.length < 3) {return results}
  nums = nums.sort((a, b) => a - b);
  let target = 0;
  for (let i = 0; i < nums.length - 2; i += 1) {
    if (nums[i] > target) {break}
    if (i > 0 && nums[i] === nums[i-1]) {continue}
    let j = i + 1;
    let k = nums.length - 1;
    while (j < k) {
      let sum = nums[i] + nums[j] + nums[k];
      if (sum === target) {
        results.push([nums[i], nums[j], nums[k]]);
        while (nums[j] === nums[j + 1]) {j += 1}
        while (nums[k] === nums[k - 1]) {k -= 1}
        j += 1;
        k -= 1;
      } else if (sum < target) {
        j += 1;
      } else {
        k -= 1;
      }
    }
  }

  return results;
}


// console.log(threeSum([-1, 0, 1, 2, -1, -4])); // [[-1, 0, 1], [-1, -1, 2]]
console.log(threeSum([-3, -2, -1, 0, 1, 2, 3])); [[-3, 0, 3], [-2, 0, 2], [-1, 0, 1], [-3, 2, 1], [3, -2, -1]]
// console.log(threeSum([9, 5, 4])); // []
// console.log(threeSum([0, 0, 0])); // [[0, 0, 0]]
// console.log(threeSum([-10, 5, 5])); // [-10, 5, 5]
// console.log(threeSum([-10, 5, 5, 1, 1, 1])); // [-10, 5, 5]
// console.log(threeSum([-10, 5, 5, -1, 1, -2)); // [[-10, 5, 5]]




