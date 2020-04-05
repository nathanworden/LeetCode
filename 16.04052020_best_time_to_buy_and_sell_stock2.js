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
    // Then go to the next number, again, find the next numebr that is larger than the current number. Push the difference into the current set.
    // Once you reach the end, 




var maxProfit = function(prices) {
  let allSums = [];

  for (let outerIdx = 0; outerIdx < prices.length; outerIdx += 1) {
    let setSum = 0;
    let currentSet = [0];
    let currentNumber = prices[outerIdx];
    let restOfCurrentArr = prices.slice(outerIdx + 1);
    for (let innerIdx = 0; innerIdx < restOfCurrentArr.length; innerIdx += 1) {
      let innerNumber = restOfCurrentArr[innerIdx];
      if (innerNumber > currentNumber) {
        currentSet.push([currentNumber, innerNumber, innerNumber - currentNumber]);
      }
    }
    
    console.log(currentSet);
    // setSum = currentSet.reduce((acc, num) => acc + num);
    // allSums.push(setSum);
  }

  return allSums;
};


console.log(maxProfit([7,1,5,3,6,4])); // 7
// console.log(maxProfit([1,2,3,4,5]));   // 4
// console.log(maxProfit([7,6,4,3,1]));   // 0
// console.log(maxProfit([7, 1, 5, 3, 6, 4, 25])); // 28
// console.log(maxProfit([1, 10, 0, 3]));  // 12
// console.log(maxProfit([1, 10, 0, 12]));



