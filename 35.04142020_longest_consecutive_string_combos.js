// You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

// Example:
// longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

// n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

// Note
// consecutive strings : follow one after another without an interruption

// Problem
// Given an array of strings, find the two strings which, when put together, is the longest string.
// Longer than the combination of lengths of any "k" other strings.
// Has to be the first one
// "K" is given to you as an input

// Input: An array of strings and an integer
// Output: A string which is the combination of k strings which is the longest combination.

// Example

// Data Structure
// Objects
// Array**
// Strings

// Algorithm
//  Guard clause for ==>  n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
// Determine the length of each string
              // ['a', 'b', 'cd', 'efg', 'hijk', 'p']
// initialize a maxLength variable to 0
              // let maxLength = 0;
// initialize longestString variable to ''
// Iterate through the input array with n groups of strings
    // Join the strings together
            // 'abcdefg'
    // Get their length
            // 8
    // If the current string group is longer then maxLength, save that string group
            //  longestString =  'abcdefg'
    // If it isn't, move on to the next one
// Return the maxString group


////////////////////////////////////////////////////////////////////////
// Finished ins 38 minutes

function longest_consec(arr, k) {
  let len = arr.length;
  let iterations;
  if (len === 0 || k > len || k <= 0 ) {return ""}
  maxLength = 0;
  longestString = '';
  
  outsideIterations = 0;
  while (arr[outsideIterations] !== undefined) {
    let subArr = [];
    for (insideI = 0; insideI < k; insideI += 1) {
      subArr.push(arr[insideI + outsideIterations]);
    }
    let currentString = subArr.join('');
    let currentStringLen = subArr.join('').length;
    if (currentStringLen > maxLength) {
      longestString = currentString;
      maxLength = currentStringLen;
    }
    outsideIterations += 1;
  }

  return longestString;
}

////////////////////////////////////////////////////////////////////////
// You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

// Example:
// longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

// n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

// Note
// consecutive strings : follow one after another without an interruption

// Algorithm
// Transform each element in the array into a combination of itself and the next k - 1 elements
// If any of the next elements are undefined, transform it into ''
// Filter for the longest string

function longest_consec(arr, k) {
  let transformed = arr.map((ele, idx, array) => {
    let str = '';
    for (let i = 0; i < k; i += 1) {
      if (array[idx + i] === undefined) {return ''}
      str += array[idx + i]
    }
    return str;
  });

  let longestLen = 0;
  let longestStr = '';
  for (let i = 0; i < transformed.length; i += 1) {
    if (transformed[i].length > longestLen) {
      longestStr = transformed[i];
      longestLen = transformed[i].length;
    }
  }

  return longestStr;
}



strarr = ["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"]

console.log(longest_consec(strarr, 2) === "abigailtheta");
console.log(longest_consec(['nathan', 'code', 'launch'], 1) ==='nathan');
console.log(longest_consec(['a', 'b', 'c', 'def', 'ghi', 'k'], 3) === 'cdefghi');
console.log(longest_consec(['a', 'b', 'cd', 'efg', 'hijk', 'p'], 4) === 'bcdefghijk');
console.log(longest_consec([], 4) === '');
console.log(longest_consec(['a'], 2) === '');5
console.log(longest_consec(['a', 'b'], 0) === '');


