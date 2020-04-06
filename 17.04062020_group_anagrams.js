// Problem
// Given an array of strings, group anagrams togethers

// An anagram is a word that has the same letters but in a different order.
// Input: Array of strings in lowercase
// Output: An Array of arrays, grouped by anagram

// Rules of Anagrams:
  // They must have the same number of letters
  // Each letter in the first word must appear the same number of times in the second word

// Examples
// console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])); // 
// // [ ["ate","eat","tea"],
// //   ["nat","tan"],
// //   ["bat"]
// // ]
// console.log(groupAnagrams(['1', 'one', 'neo', '1', '11'])); 
// // [ ['1', '1'], ['one', 'neo'], ['11']]

// console.log(groupAnagrams(['undefined', 'definedun', 'unrefined']);
// // [['undefined', definedun'], ['unrefined']];

// Data Structure
// Array


// Algorithm
// Iterate through each word
// If the word has alread been seen, skip to the next word
// Compare each word to the remaining words in the array
// If the two are anagrams, save them and go on to the next word
    // If the two words are different lengths, they are not anagrams
    // Iterate through each letter in the first word. If that letter exists in the second word, replace it with an empty string.
    // Once you reach the end of the first string, if there are any letters left over in the second string, they are not anagrams.
// If the two are not anagrams, skip to the next word
// Save all the anagrams in an array and push that array to the output array


// Code

// var groupAnagrams = function(strs) {
//   let output = [];
//   let seen = [];
//   strs.forEach((outerWord, outerIdx) => {
//     let anagrams = [];
//     let subArr = strs.slice(outerIdx + 1);
//     if (!seen.includes(outerWord)) {anagrams.push(outerWord)};
//     if (subArr.length === 0 && anagrams.length !== 0) {
//       output.push(anagrams);
//     }

//     subArr.forEach((innerWord, innerIdx) => {
//       if (!isAnagram(outerWord, innerWord)) {
//         return;
//       } else if (isAnagram(outerWord, innerWord) && !seen.includes(innerWord)) {
//         anagrams.push(innerWord);
//       }
        
//     });
//       seen.push(anagrams);
//       seen = seen.reduce((acc, ele) => acc.concat(ele), []);
//       if (anagrams.length > 0 && !output.includes(anagrams)) {output.push(anagrams)};
//   });

//   return output;
// }

// function isAnagram(word1, word2) {
//   if (word1.length !== word2.length) {return false} 
//   let arr1 = word1.split('');
//   arr1.forEach(letter => {
//     word2 = word2.replace(letter, '');
//   });
//   if (word2.length > 0) {
//     return false;
//   } else {
//     return true;
//   }
// }

// console.log(isAnagram('eat', 'bea'));

// console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])); // 
// // [ ["ate","eat","tea"],
// //   ["nat","tan"],
// //   ["bat"]
// // ]

// console.log(groupAnagrams(["eat", "tea", "tan", "eat", "ate", "nat", "bat"])); // 
// // [ ["ate","eat","eat", "tea"],
// //   ["nat","tan"],
// //   ["bat"]
// // ]

// console.log(groupAnagrams(['1', 'one', 'neo', '1', '11'])); 
// // // [ ['1', '1'], ['one', 'neo'], ['11']]

// console.log(groupAnagrams(['undefined', 'definedun', 'unrefined']));
// // [['undefined', definedun'], ['unrefined']];


// // console.log(groupAnagrams(["",""])); // [["",""]]
// console.log(groupAnagrams(["","",""])); //  [["","",""]]
// console.log(groupAnagrams(['a', 'a', 'a', 'a'])); /// [['a', 'a', 'a', 'a']]

// console.log(groupAnagrams(['a', 'b', 'a']));  // [['a', 'a'], ['b']]



/////////////////////////////////////////////////////////////////////

// ["eat", "tea", "tan", "ate", "nat", "bat"]

// Algorithm
// Create an Ambigrams array: []
// Shift the first letter off of the Input Array and set it to a Current Word Variable.
// While the input Array's length is greater than 0:
  // Compare current word to the next word in the array: "tea"
  // If the Current Word and Compare Word are ambigrams, add the Compare Word to the Ambigrams Array. Also, splice it out of the original array.
        // Subtract one from the iterator so the idex stays the same.
  // If the Current Word and the Compare Word are not ambigrams, move on to the next word
  
var groupAnagrams = function(strs) {
  let output = [];

  while (strs.length > 0) {
    let idx = 0;
    let currentAnagrams = [];
    let currentWord = strs.shift();
    currentAnagrams.push(currentWord);

    while (strs[idx] !== undefined) {
      if (isAnagram(currentWord, strs[idx])) {
        currentAnagrams.push(strs.splice(idx, 1)[0]);
      } else {
        idx += 1;
      }
    }

    output.push(currentAnagrams);
  }

  return output;
}

function isAnagram(word1, word2) {
  if (word1.length !== word2.length) {return false} 
  let arr1 = word1.split('');
  arr1.forEach(letter => {
    word2 = word2.replace(letter, '');
  });
  if (word2.length > 0) {
    return false;
  } else {
    return true;
  }
}


console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])); // 
// [ ["ate","eat","tea"],
//   ["nat","tan"],
//   ["bat"]
// ]

console.log(groupAnagrams(["eat", "tea", "tan", "eat", "ate", "nat", "bat"])); // 
// [ ["ate","eat","eat", "tea"],
//   ["nat","tan"],
//   ["bat"]
// ]

console.log(groupAnagrams(['1', 'one', 'neo', '1', '11'])); 
// // [ ['1', '1'], ['one', 'neo'], ['11']]

console.log(groupAnagrams(['undefined', 'definedun', 'unrefined']));
// [['undefined', definedun'], ['unrefined']];


// console.log(groupAnagrams(["",""])); // [["",""]]
console.log(groupAnagrams(["","",""])); //  [["","",""]]
console.log(groupAnagrams(['a', 'a', 'a', 'a'])); /// [['a', 'a', 'a', 'a']]

console.log(groupAnagrams(['a', 'b', 'a']));  // [['a', 'a'], ['b']]



//////////////////////////////////////////////////////////////////////

// Another person's answer in a discussion post:

var groupAnagrams = function(strs) {
    var mapping = {};
    for (var i = 0; i < strs.length; i++) {
        var str = strs[i];
        var sorted = str.split('').sort().join('');
        
        if (mapping[sorted] === undefined) {
            mapping[sorted] = [str];
        } else {
            mapping[sorted].push(str);
        }
    }
    
    return Object.values(mapping)
};




////









