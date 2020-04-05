// Problem
// Given a string and a number of rows, return a new string that is written in a zig zag pattern and then read line by line.

// Example
// console.log(convert("PAYPALISHIRING", 3)); // "PAHNAPLSIIGYIR"
// console.log(convert("PAYPALISHIRING", 4)); // "PINALSIGYAHRPI"
// console.log(convert("NATHANWORDEN", 5));   // "NARAHNODNTWE"

// N   A   R
// A H N O D N 
// T   W   E 


// N         E
// A       D N
// T     R
// H   O 
// A W
// N

// Data Structre
// Array
// Object

// Algorithm
// Create an object with numRows number of keys
// Iterate through the string, assigning each letter to the next key
    // From 0 to numRows increment the key
    // Once numRows is reached, start decrementing the key until 0 is reached
    // then start incrementing again
//  For each row, add its string to the output string





var convert = function(s, numRows) {
  if (numRows === 1) {return s}
    let zigZag = {};
    let rowNumber = 1;
    let previous;
    let keys;
    let output = '';

    for (let i = 1; i <= numRows; i += 1) {
      zigZag[i] = "";
    }

    for (let i = 0; i < s.length; i += 1) {
      zigZag[rowNumber] += s[i];
      if (rowNumber === 1) {
        rowNumber += 1;
        previous = 1;
      } else if (rowNumber === numRows){
        rowNumber -= 1;
        previous = numRows;
      } else if (previous < rowNumber) {
        rowNumber += 1;
        previous += 1;
      } else if (previous > rowNumber) {
        rowNumber -= 1;
        previous -= 1;
      }
    }

    keys = Object.keys(zigZag);
    keys.forEach(key => {
      output += zigZag[key];
    });

    return output;
};


console.log(convert("PAYPALISHIRING", 3) === "PAHNAPLSIIGYIR");
console.log(convert("PAYPALISHIRING", 4) ===  "PINALSIGYAHRPI");
console.log(convert("NATHANWORDEN", 3) === "NARAHNODNTWE");
console.log(convert("", 3) === "");
console.log(convert("NATHANWORDEN", 5) ===  "NRAODTWEHNNA");
console.log(convert("AB", 1) === "AB" );
console.log(convert("AB", 2) === "AB");
console.log(convert("ABC", 2) === "ACB");
console.log(convert("A", 5) === "A" );
console.log(convert("ABC", 10) === "ABC");
console.log(convert("ABCD", 2) === "ACBD");

// 1 AB







