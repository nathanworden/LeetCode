// Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:

// Any left parenthesis '(' must have a corresponding right parenthesis ')'.
// Any right parenthesis ')' must have a corresponding left parenthesis '('.
// Left parenthesis '(' must go before the corresponding right parenthesis ')'.
// '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
// An empty string is also valid.
// Example 1:
// Input: "()"
// Output: True
// Example 2:
// Input: "(*)"
// Output: True
// Example 3:
// Input: "(*))"
// Output: True
// Note:
// The string size will be in the range [1, 100].



// When checking whether the string is valid, we only care about the balance of extra open left brackets as we parse through the string. For example, when checking whether '(()())' is valid, we had a balance of 1, 2, 1, 2, 1, 0 as we parsed through the string. 

// For example, if we have string '(***)', then as we parse each character, the set of possible values for the balance is:
// [1] for '('
// [0, 1 or 2] for '(*'
// [0, 1, 2, or 3] for '(**'
// [0, 1, 2, 3, 4] for '(***'
// [0, 1, 2, 3] for '(***)'

// Algorithm

// Let lo, hi respectively be the smallest and largest possible number of open left brackets after processing the current character in the string.

// If we encounter a left bracket then lo += 1, otherwise we could write a right bracket, so lo -= 1. If we encouter what can be a left bracket, then hi += 1, otherwise we must write a right bracket, so hi -= 1. 

// If hi < 0, then the current prefix can't be made valid no matter what our choices are. Also we, can never have less than 0 open left brackets. At the end we should check that we can have exactly 0 open left brackets.


// var checkValidString = function(s) {
//   let low = 0;
//   let high = 0;
//   for (let i = 0; i < s.length; i += 1) {
//     s[i] === '(' ? low += 1 : low -= 1;
//     s[i] !== ')' ? high += 1 : high -= 1;
//     if (high < 0) {break}
//     low = Math.max(low, 0);
//   }
//   return low === 0;
// }

var checkValidString = function(s) {
  let smalPosNumOpnLftB = 0;
  let largPosNumOpnLftB = 0;
  for (let i = 0; i < s.length; i += 1) {
    smalPosNumOpnLftB += s[i] === '(' ? 1 : -1;
    largPosNumOpnLftB += s[i] !== ')' ? 1 : -1;
    if (largPosNumOpnLftB < 0) {break}
    smalPosNumOpnLftB = Math.max(smalPosNumOpnLftB, 0);
  }
  return smalPosNumOpnLftB === 0;
}



console.log(checkValidString("()")           === true );
console.log(checkValidString("(*)")          === true);
console.log(checkValidString("(*))")         === true);
console.log(checkValidString("(")            === false);
console.log(checkValidString(")")            === false);
console.log(checkValidString("*")            === true);
console.log(checkValidString("(((((())))))") === true);
console.log(checkValidString("((((*())))))") === true);
console.log(checkValidString("((*))")        === true);
console.log(checkValidString("((**")         === true);
console.log(checkValidString("())*")         === false);
console.log(checkValidString("(((******))") === true);
console.log(checkValidString("(())((())()()(*)(*()(())())())()()((()())((()))(*") === false);







