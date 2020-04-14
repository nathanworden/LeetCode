// Problem
// Given a string and an array of instructions, sift a string
// Instructions are given in the form [direction, amount], where the direction is 0 for left and 1 for right. Aoumt i s the amount by which string s is to be shifted.

// Data Structure
// String
// Array

// ALgorithm
// For each subArray in shift
// If the first element is a 0, shift the string the second element number of spaces to the left.
// If the first element is a 1, shift the string the second element number of spaces to the right.
// Return the string


var stringShift = function(s, shift) {
  shift.forEach(instructions => {
    if (instructions[0] === 0) {
      for (let i = 0; i < instructions[1]; i += 1) {
        s = s.slice(1) + s[0]
      }
    } else if (instructions[0] === 1) {
        for (let i = 0; i < instructions[1]; i += 1) {
          s = s[s.length - 1] + s.slice(0, s.length - 1)
        }
      }
  });

  return s;
};

console.log(stringShift("abc", [[0,1],[1,2]])); // "cab"
console.log(stringShift("abcdefg", [[1,1],[1,1],[0,2],[1,3]])); // "efgabcd"
console.log(stringShift("abcd", [[0, 5], [0, 0]])); // "bcda"
console.log(stringShift("nathan", [[1, 4], [1, 1]])); // "athann"
console.log(stringShift("a", [0, 9], [1, 2])); // "a"
