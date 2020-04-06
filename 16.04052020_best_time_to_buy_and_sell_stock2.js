// Problem
// Given an array of positive integers, find the maximum amount adding and subtracting the numbers can incur.
// Rules:
// You can't add twice in a row or subtract twice in a row
// You can complete as many transactions as you would like

// Input: array
// Output: Integer (the max integer of the sums)

// console.log(maxProfit([7,1,5,3,6,4])); // 7
// console.log(maxProfit([1,2,3,4,5]));   // 4
// console.log(maxProfit([7,6,4,3,1]));   // 0
// console.log(maxProfit([7, 1, 5, 3, 6, 4, 25])); // 28
// console.log(maxProfit([1, 10, 0, 3]));  // 12
// console.log(maxProfit([1, 10, 0, 12]));

// [7,1,5,3,6,4]
// 1: (5-1 = 4), (3-1 = 2), (6-1 = 5), (4-1 = 3)
// 3: (6-3 = 3), (4-3 = 1)

// Data Structure
// Array

// Algorithm
// For each number, find the next number that is larger than the current number. Push the difference into the current set 
    // Then go to the next number, again, find the next number that is larger than the current number. Push the difference into the current set.
    // Once you reach the end, 


// Subroutine:
// Given an array, find the first number larger than the first element.



// var maxProfit = function(prices) {
//   let allSums = [];

//   for (let outerIdx = 0; outerIdx < prices.length; outerIdx += 1) {
//     let setSum = 0;
//     let currentSet = [0];
//     let currentNumber = prices[outerIdx];
//     let restOfCurrentArr = prices.slice(outerIdx + 1);
//     for (let innerIdx = 0; innerIdx < restOfCurrentArr.length; innerIdx += 1) {
//       let innerNumber = restOfCurrentArr[innerIdx];
//       if (innerNumber > currentNumber) {
//         currentSet.push(innerNumber - currentNumber);

        
//       }
//     }
    
//     console.log(currentSet);
//     // setSum = currentSet.reduce((acc, num) => acc + num);
//     // allSums.push(setSum);
//   }

//   return allSums;
// };


// [6,1,3,2,4,7]

//  Given an array, iterate through each number
// Compare every other number to the current number.
// If no number is larger than the current number, return 0.

////////////////////////////////////////////////////////////////////////////////

// var maxProfit = function(prices) {
//   let output;
//   let all = prices.map((currentNumber, outerIdx) => {
//     let restOfCurrentArr = prices.slice(outerIdx + 1);
//     let sums = [];
//     restOfCurrentArr.forEach((innerNumber, innerIdx) => {
//       if (innerNumber > currentNumber) {
//         let diff = innerNumber - currentNumber;
//         let restOfInnerArr = restOfCurrentArr.slice(innerIdx + 1);
//         let subSums = rollUp(restOfInnerArr);
//         sums.push(diff + subSums);
//       } else {
//         sums.push(0);
//       }
//     });

//       console.log(sums)
//       return sums;
//   });

//   output = all.reduce((acc, val) => acc.concat(val), []);
//   return Math.max(...output);
// } 



// function rollUp(arr) {
//   // Look at the first element of the array and find the next element of the array that is larger than it
//   // Add the difference between those two plus calling rollUp on the rest of the array
//   let subArr = arr.slice(1)
//   for (let idx = 0; idx < subArr.length; idx += 1) {
//     if (subArr[idx] > arr[0]) {
//       let nextElementLarger = subArr[idx];
//       let diff = nextElementLarger - arr[0];
//       let recursArr = subArr.slice(idx + 1);
//       return diff + rollUp(recursArr);
//     }
//   }

//   return 0;
// }

// console.log(rollUp([1,5,3,6,4]));


// console.log(maxProfit([7,1,5,3,6,4])); // 7
// console.log(maxProfit([1,2,3,4,5]));   // 4
// console.log(maxProfit([7,6,4,3,1]));   // 0
// console.log(maxProfit([7, 1, 5, 3, 6, 4, 25])); // 28
// console.log(maxProfit([1, 10, 0, 3]));  // 12
// console.log(maxProfit([1, 10, 0, 12]));  // 21
// console.log(maxProfit([6,1,3,2,4,7]));  // 7

////////////////////////////////////////////////////////////////////////////////


var maxProfit = function(prices) {
  let maxProf = 0;
  for (let i = 1; i < prices.length; i += 1) {
    if (prices[i] > prices[i-1]) {
      maxProf += prices[i] - prices[i - 1];
    }
  }

  return maxProf;
}



console.log(maxProfit([7,1,5,3,6,4])); // 7
console.log(maxProfit([1,2,3,4,5]));   // 4
console.log(maxProfit([7,6,4,3,1]));   // 0
console.log(maxProfit([7, 1, 5, 3, 6, 4, 25])); // 28
console.log(maxProfit([1, 10, 0, 3]));  // 12
console.log(maxProfit([1, 10, 0, 12]));  // 21
console.log(maxProfit([6,1,3,2,4,7]));  // 7


