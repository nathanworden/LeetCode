// Problem: Write a function to find the longest common prefix string amongs an array of strings.

// Input: an array of arrays
// Output: A string, which is the longest commmon prefix.

// Rules:
// The prefix has to begin EVERY word in the array
// If there is no common prefix, return an empty string.


// Examples

// Data Structure
// Array

// Algorithm
// Look at the first character of each word. If they all match, save it
// Look at the next letter, if they all match, save it.
// Continue until they don't match or you reach the end of one of the words
// Return the saved string


// Create an array of every first letter of every string
// If the letters are all the same, add the letter to the result and continue
// If they are not all the same, return the result so far


var longestCommonPrefix = function(strs) {
  if (strs.length === 0) {return ''}
  let result = '';
  let template = strs[0].split('').map(letter => [letter]);
  strs.forEach(word => {
    for (let i = 0; i < word.length; i += 1) {
      if (template[i]) {template[i].push(word[i])}
    }
  });

  for (let i = 0; i < template.length; i += 1) {
    let subArr = template[i];
    let firstLetter = subArr[0];
    if (subArr.every(letter => letter === firstLetter) && subArr.length - 1 === strs.length) {
      result += firstLetter;
    } else {
      break
    }
  }

  return result;
};

console.log(longestCommonPrefix(["flower","flow","flight"])); // "fl"
console.log(longestCommonPrefix(["dog","racecar","car"]));  // ""
console.log(longestCommonPrefix(['a', 'a', 'abc']));  "a"
console.log(longestCommonPrefix(["nathan", "natha", "na"])); // "na"

