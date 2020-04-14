// Problem
// Given a binary array (an array with only 1s and 0s), find the maximum length of a contiguous subarray with equal number of 0 and 1.


// Examples
// Data Structrure
// Array

// Algorithm
           // [1, 0, 1, 1, 0, 1, 0, 0, 1]
// Loop thgrouh the array and count the number of 1s and 0s.
          // 1s: 5, 2s: 4
// If the array has the same number of 1s and zeros, return the length of the array.

// If the array does not have the same number of 1s and zeroes, how many 1s and 0s does it have?
    // Whichever it has less of, the longest possible contiguouss subarray is twice that number
            // 
// Find the index of the first x and the last x.
// Add one to the start of the array (unless it is undefined)
// Add one to the end of the array (unless it is undefined)
// Until you have an equal amount of 1s and zeroes.
// return that length


// Iterate over every possible chunk of that many of numbers. Moving the window over 1 spot each time an unsuccessful balance of 0s and 1s is found.
// If you find a window that has the number of twice the smaller amount, return that number.
// If you don't, subtract one from that number and start over.
// Continue until the number is 0 or you break.


// var findMaxLength = function(nums) {

//   count = countNums(nums);

//   if (count['0'] === count ['1']) {return nums.length} 
      
//   let smaller = amounts(count)[0];
//   let larger = amounts(count)[1];
//   let start = nums.indexOf(smaller);
//   let finish = nums.lastIndexOf(smaller);

//   let subarr = nums.slice(start, finish + 1);
//   count = countNums(subarr);
//   if (count['0'] === count ['1']) {return subarr.length} 

//   for (let i = 0; i < nums.length; i += 1) {
//     if (start > 0) {start -= 1}
//     subarr = nums.slice(start, finish + 1);

//     count = countNums(subarr);
//     if (count['0'] === count ['1']) {return subarr.length} 

//     if (finish < nums.length - 1) {finish += 1}
//     subarr = nums.slice(start, finish + 1);
//     count = countNums(subarr);
//     if (count['0'] === count ['1']) {return subarr.length} 
//   }
  

//   return count;
// };  

// function amounts(count) {
//   if (count['0'] < count['1']) {
//     return [0, 1];
//   } else {
//     return [1, 0];
//   }
// }

// function countNums(nums) {
//   let count = {
//     '0': 0,
//     '1': 0,
//   }

//   for (num of nums) {
//     num === 0 ? count['0'] += 1 : count['1'] += 1;
//   }

//   return count;
// }

// Iterate through every character counting the amount of 0s and 1s
// If there are an even amount of 0s and 1s in the segment, update the max number
// Then repeat with the array one character smaller until the arrays are size 0.
// Return the max number


// var findMaxLength = function(nums) {

//   let max = 0;

//   for (let i = 0; i < nums.length; i += 1) {
//     let subArr = nums.slice(i);
//     let count = {
//       0: 0,
//       1: 0,
//     }

//     for (let j = 0; j < subArr.length; j += 1) {
//       subArr[j] === 0 ? count[0] += 1 : count[1] += 1;
//       let localMax = count[0] + count[1];
//       if (count[0] === count[1] && localMax > max) {max = localMax}
//     }
//   }

//     // nums.shift();

//   return max;
// }


// console.log(findMaxLength([0, 1]));         // 2
// console.log(findMaxLength([0, 1, 0]));      // 2
// console.log(findMaxLength([]));             // 0
// console.log(findMaxLength([0, 0, 0, 0, 1, 1]));  // 4
// console.log(findMaxLength([1, 0, 1, 1, 0, 1, 0, 0])); // 8
// console.log(findMaxLength([0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1])); // 18
// console.log(findMaxLength([0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1]));  // 16
// console.log(findMaxLength([0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1]));  // 18
// console.log(findMaxLength([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1])); // 18
// console.log(findMaxLength([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0])); // 16
// console.log(findMaxLength([0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0]));  // 16
// console.log(findMaxLength([0,0,1,0,0,0,1,1]));  //  6
// console.log(findMaxLength([0,1,1,0,1,1,1,0]));   // 4


// var findMaxLength = function(nums) {
//   let count = {
//     0: 0,
//     1: 0,
//     }
//   let max = 0;

//   for (let i = 0; i < nums.length; i += 1) {
//     nums[i] === 0 ? count[0] += 1 : count[1] += 1;

//     let smaller = count[0] < count[1] ? 0 : 1;
//     let larger = count[0] >= count[1] ? 0 : 1;

//     if (count[smaller] * 2 > max) {
//       max = (count[smaller] * 2);
//     }
//       // console.log(max);
//   }

//   return max;
// }


// var findMaxLength = function(nums) {
//   if (nums.length === 0) {return 0}
//   let counts = {};
//   let count = 0;
//   for (let i = 0; i < nums.length; i += 1) {
//     nums[i] === 0 ? count -= 1 : count += 1;

//     if (counts[count]) {
//       counts[count].push(i)
//     } else {
//       counts[count] = [i];
//     }
//   }

//   let keys = Object.keys(counts);
//   let lens = keys.map(key => {
//     let countArr = counts[key];
//     if (key === '0') {return (Math.max(...countArr)) + 1}
//     let start = countArr[0];
//     let finish = countArr[countArr.length - 1];
//     let seg = nums.slice(start, finish + 1);
//     return finish - start;
//   });

//   return Math.max(...lens);
// }

//////////////////////////////////////////////
// Other student answer
var findMaxLength = function(nums) {
  let counts = {0: -1};
  let count = 0;
  max = 0;
  for (let i = 0; i < nums.length; i += 1) {
    nums[i] === 0 ? count -= 1 : count += 1;

    if (counts[count] != null) {
      max = Math.max(max, i - counts[count])
    } else {
      counts[count] = i;
    }
  }
  return max;
};



console.log(findMaxLength([0, 1])     ===    2 );
console.log(findMaxLength([0, 1, 0])  ===    2 );
console.log(findMaxLength([])         ===    0 );
console.log(findMaxLength([0, 0, 0, 0, 1, 1])  === 4 );
console.log(findMaxLength([1, 0, 1, 1, 0, 1, 0, 0]) === 8 );
console.log(findMaxLength([0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1]) === 18  );
console.log(findMaxLength([0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1]) ===  16 );
console.log(findMaxLength([0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1]) ===  18 );
console.log(findMaxLength([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1]) === 18  );
console.log(findMaxLength([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0]) === 16  );
console.log(findMaxLength([0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0]) ===  16 );
console.log(findMaxLength([0,0,1,0,0,0,1,1]) ===   6 );
console.log(findMaxLength([0,1,1,0,1,1,1,0]) ===   4 );
console.log(findMaxLength([0, 0, 1, 0, 0, 0, 1, 1]) === 6);



