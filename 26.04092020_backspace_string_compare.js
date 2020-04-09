// Problem:
// Given two strings, return if they are equal when both are typed into empty text editors. 
// # means a backspace characrer.

// Data Structure
// String
// Arrary

// Algorithm
// Create an empty output array
// Add each character to a new string.
// For each character of the input string, either add it to the output string, or pop off the most recent input
// If you hit a '#', then delete (pop) the most recent character of the new string
// Do this for both input strings
// Compare the two output strings. Return true if they are the same, false otherwise


// var backspaceCompare = function(S, T) {
//     let sResult = [];
//     let tResult = [];
//     let sArr = S.split('');
//     let tArr = T.split('');
//     sArr.forEach(letter => {
//       if (letter === "#") {
//         sResult.pop();
//       } else {
//         sResult.push(letter);
//       }
//     });

//     tArr.forEach(letter => {
//       if (letter === "#") {
//         tResult.pop();
//       } else {
//         tResult.push(letter);
//       }
//     });

//     return sResult.join('') === tResult.join('');
// };

var backspaceCompare = function(S, T) {
    let sResult = [];
    let tResult = [];
  for (letter of S) {
      if (letter === "#") {
        sResult.pop();
      } else {
        sResult.push(letter);
      }
    }

  for (letter of T) {
    if (letter === "#") {
      tResult.pop();
    } else {
      tResult.push(letter);
    }
  }

    return sResult.join('') === tResult.join('');
};

console.log(backspaceCompare("ab#c", "ad#c") ===  true);
console.log(backspaceCompare("ab##", "c#d#") ===  true);
console.log(backspaceCompare("a##c", "#a#c") ===  true);
console.log(backspaceCompare("a#c", "b")     === false);
console.log(backspaceCompare("abc", "abc")   ===  true);
console.log(backspaceCompare("#", "#")       === true);
console.log(backspaceCompare("#", "a")       === false);
console.log(backspaceCompare("abc##defg", "rt##adefg") === true);
















