/**
 * @param {string} s
 * @return {string}
 */

// Problem
// Given a string, find the palindorms in the string and return the longest palindrom.

// If there are no palindromes, return ''
// input: a string of max length 1000
// output: a string (which is the longest palindrome, or '')

// Examples
// input: 'natan'
// output: 'nathan'

// input: 'nathan'
// output: ''

// input: 'aaabbaaajk'
// output: 'aaabbaaa'

// input: 'ddd ddd ddd'
// output: 'ddd ddd ddd'

// input: '*%kjufaaddaaf'
// output: 'faaddaaf'

// input: "babad"
// output 'bab'

// input "cbbd"
// output: "bb"

// input 'a'
// output 'a'

// Data Structe
// Strings
// Array

// Algoritm
// initiate an array called palindromes
// Split string into an array of single letters
    // ['c', 'b', 'b', 'd']
// Iterate through every letter
// Create a temp string that adds the next letter of the full string to it.
    // tempStr = ''
   // tempStr = 'bb'
// Check if that temp string is a paindrome.
    // Reverse the temp string and comparing it to itself. 
    // 'bb' === 'bb'
// If it is equal to itself it is a palindrome
     // Save the palindrome in a 'palindromes' array
//              palindomes = ['c', 'b', 'bb']
    // if it isn't a palindrome, continue
// Add another letter to the string, until the end of the full string.
    // tempString = 'cbbd'
// At the end we have an array of all the palindorme substrings
    // palindomes = ['c', 'b', 'bb']
// Create a new array which is the transformation of the palindormse into their length.
 // [1, 1, 2]
// find the max length
//  2
// Filter the palindorms substrings for which ones have the max length
//     'bb'
// Return the first one

var longestPalindrome = function(s) {
    let palindromes = [];
    let strArr = s.split('');
    let lengths;
    let maximum;

    strArr.forEach((letter, idx, array) => {
        let tempString = '';
        for (let i = 0; i < array.length - idx; i += 1) {
            tempString += array[idx + i];
            let reversed = tempString.split('').reverse().join('');
            if (tempString === reversed) {
                palindromes.push(tempString);
            }
        }
    });

    lengths = palindromes.map(word => word.length)
    maximum = Math.max(...lengths);
    return palindromes.filter(word => word.length === maximum)[0];
};


console.log(longestPalindrome("babad") === 'bab') 
console.log(longestPalindrome('natan') === 'natan')
console.log(longestPalindrome('nathan') === 'n');
console.log(longestPalindrome('aaabbaaajk') === 'aaabbaaa');
console.log(longestPalindrome('ddd ddd ddd') === 'ddd ddd ddd');
console.log(longestPalindrome('*%kjufaaddaaf') === 'faaddaaf');
console.log(longestPalindrome("babad") === 'bab');
console.log(longestPalindrome("cbbd") === 'bb');
console.log(longestPalindrome("a") === "a" );
// Examples
// input: 'natan'
// output: 'natan'

// input: 'nathan'
// output: ''

// input: 'aaabbaaajk'
// output: 'aaabbaaa'

// input: 'ddd ddd ddd'
// output: 'ddd ddd ddd'

// input: '*%kjufaaddaaf'
// output: 'faaddaaf'

// input: "babad"
// output 'bab'

// input "cbbd"
// output: "bb"

// input 'a'
// output 'a'



