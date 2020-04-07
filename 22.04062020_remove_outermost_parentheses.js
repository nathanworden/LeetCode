// Problem
// Give a valid parentheses string, remove the outermost parenthese of every primitive string.

// Example

// Algorithm
// split the input string into individual characters
// Seperate out the primitives
      // Start counter at 0
      // Count up for every (
      // Count down for every )
      // If you hit zero, that is the end of a primitive
// For each primitive, take off the first and last character

// var removeOuterParentheses = function(str) {
//   let arr = str.split("");
//   let primitives = [];
//   let count = 0;
//   let primStart = 0;
//   for (let idx = 0; idx < arr.length; idx += 1) {
//     if (arr[idx] === '(') {
//       count += 1;
//     } else if (arr[idx] === ')') {
//       count -= 1;
//     }

//     if (count === 0) {
//       primitives.push(arr.slice(primStart, idx + 1).join(''));
//       primStart = idx + 1;
//     }
//   }

//   return primitives.map(paren => {
//     return paren.slice(1, paren.length - 1);
//   }).join('');
// };


//Another Student's Answer:
var removeOuterParentheses = function(str) {
  let parenCount = 0;
  let output = '';
  for (let letter of str) {
    if (letter === "(") {
      if (parenCount) {
        output += letter;
      } 
      parenCount += 1;
    } else {
        parenCount -= 1;
      if (parenCount) {
        output += letter;
      }
    }
  }

  return output;
}

console.log(removeOuterParentheses("(()())(())") === "()()()");
console.log(removeOuterParentheses("(()())(())(()(()))") === "()()()()(())");
console.log(removeOuterParentheses("()()") )//=== "");








