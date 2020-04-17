// Problem
// Given a string containing only three types of characters: (, ), and *, write a function to check whether this string is valid.

// Rules:
// 1. Left parenthesis ( must have right parenthesis )
// 2. Right parenthesis ) must have left parenthesis (
// 3. * could be treated as a single rightt or left parentheses OR an empty string
// 4. An empty string is also valid.

// DataStructure
// String
// Array

// Algorithm
// 1. Check if the parenthesis are in the right order (Also count the num of parenthesis)
    // a. Start a balanceCount at 0. Start a leftParen count at 0, start a right Paren count at 0. Start a starCount
    // b. For every Left parenthesis you see, increment the balanceCount by one nad the leftParen count by 1
    // c. For every Right parenthesis you see, decrement the balanceCount by one and increment the rightParen count by 1
    // d. if the count goes negative return false.
// 2. If the left and right paren counts are equal, return true
// 3. If the left and right parenn counts are not equal:
    // a. What is the difference between the two?
    // b. If the difference is the same amount as the starCount return true
    // c. Otherwise, return false

var checkValidString = function(s) {
  let balanceCount = 0; 
  let leftParen = 0;
  let rightParen = 0;
  let starCount = 0;
  let diff;

  let arr = s.split('');
  for (let i = 0; i < arr.length; i += 1) {
    if (balanceCount < 0) {return false}
    if (arr[i] === '(') {
      balanceCount += 1;
      leftParen += 1;
    } else if (arr[i] === ')') {
      balanceCount -= 1;
      rightParen += 1;
    } else if (arr[i] === '*') {
      starCount += 1;
    }
  }

  // console.log(balanceCount);
  // console.log(leftParen);
  // console.log(rightParen);
  // console.log(starCount);

  if (leftParen === rightParen) {
    // console.log("same")
    return true;
  } else {
    diff = Math.abs(leftParen - rightParen);
    if (diff <= starCount) {return true}
  }
  return false;
};




// console.log(checkValidString("()")           === true );
// console.log(checkValidString("(*)")          === true);
// console.log(checkValidString("(*))")         === true);
// console.log(checkValidString("(")            === false);
// console.log(checkValidString(")")            === false);
// console.log(checkValidString("*")            === true);
// console.log(checkValidString("(((((())))))") === true);
// console.log(checkValidString("((((*())))))") === true);
// console.log(checkValidString("((*))")        === true);
// console.log(checkValidString("((**")         === true);
// console.log(checkValidString("())*")         === false);
// console.log(checkValidString("(((******))") === true);
console.log(checkValidString("(())((())()()(*)(*()(())())())()()((()())((()))(*") )//=== false);

"((*)(*((*"
"(("






