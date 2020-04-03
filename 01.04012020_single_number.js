// Given a non-empty array of integers, every element appears twice except for one. Find that single one.

// Note:
// Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

// Example 1:

// Input: [2,2,1]
// Output: 1
// Example 2:

// Input: [4,1,2,1,2]
// Output: 4

// var singleNumber = function(nums) {
//   let hsh = {};
//   for (let i = 0; i < nums.length; i += 1) {
//     if (hsh[nums[i]]) {
//       hsh[nums[i]] += 1;
//     } else {
//       hsh[nums[i]] = 1;
//     }
//   }

//   let keys = Object.keys(hsh);
//   for (let i = 0; i < keys.length; i += 1) {
//     if (hsh[keys[i]] === 1) {
//       return Number(keys[i])
//     }
//   }
// };

function singleNumber() 


console.log(singleNumber([2,2,1]) === 1);
console.log(singleNumber([4, 1, 2, 1, 2]) === 4)