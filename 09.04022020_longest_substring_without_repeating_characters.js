// Problem
// Givien a string, find the length of the longestsubstring
// without repeating characters
// input: string
// output: integer (representing a length)

//question: Do captial letters count as the same letter as lowercase letters?

// Examples
// input: 'nathan'
// output: 4

// input: 'aaajoshua'
// 6

// Data Structure
// Strings
// Array

// Algorithm
// Split the string into an array
// Iterate through each letter
// Create a slice of the original array that is the array from the current letter to the end.

// Compare the current letter to each of the letters in the slice.
// Count the number of spaces forward you go until:
    // You find a letter that is equivlant to the current one
    // OR you reach the end of the the array
// Save the Count in a one element array. (compare each subsequent count and replace if the new count is larger than the current count)

// COde

var lengthOfLongestSubstring = function(str) {
  if (str.length === 1) {return 1}
   let fullArr = str.split('');
   let longestCount = 0;
   let longestSubstring = [];
   for (let i = 0; i < fullArr.length; i += 1) {
      let tempWord = fullArr[i];
      let subArr = fullArr.slice(i + 1);
      for (let j = 0; j < subArr.length; j += 1) {
        if (tempWord.includes(subArr[j])) {
          if (longestCount < tempWord.length) {
            longestCount = tempWord.length;
            longestSubstring.shift();
            longestSubstring.push(tempWord);
          }
          break;
        } else if (j === subArr.length - 1) {
          if (longestCount <= tempWord.length) {
            longestCount = tempWord.length + 1;
          }
        } else {
          tempWord += subArr[j];
        }
      }
   }

   return longestCount;
};

// "abcabcbb"
//  "bcabcbb"


console.log(lengthOfLongestSubstring("abcabcbb") ===  3 );
console.log(lengthOfLongestSubstring("bbbbb") === 1 );
console.log(lengthOfLongestSubstring("pwwkew") ===  3);
console.log(lengthOfLongestSubstring("nathan") === 4);
console.log(lengthOfLongestSubstring("aaajoshua") === 6);
console.log(lengthOfLongestSubstring("") === 0 );
console.log(lengthOfLongestSubstring("d") === 1);
console.log(lengthOfLongestSubstring("dd") === 1);
console.log(lengthOfLongestSubstring("dp") === 2 );
console.log(lengthOfLongestSubstring("abcdefghijk") === 11 );
console.log(lengthOfLongestSubstring("abcdefghidjk") === 9 );
console.log(lengthOfLongestSubstring("aab") === 2);













