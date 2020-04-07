// Morse Code Table:
// let morseTable = {
//   'a': ".-", 'b': "-...", 'c': "-.-.", 'd': "-..", 'e': ".", 'f': "..-.",
//   'g': "--.", 'h': "....", 'i': "..", 'j': ".---", 'k': "-.-", 'l': ".-..",
//   'm': "--", 'n': "-.", 'o': "---", 'p': ".--.", 'q': "--.-", 'r': ".-.", 
//   's': "...", 't': "-", 'u': "..-", 'v': "...-", 'w': ".--", 'x': "-..-",
//   'y': "-.--", 'z': "--..",
// }


// Problem
// Given an input array of strings, each word can be written as a concatenation of
//  the Morse code of each letter. 
// Return the number of different transformations amoung all words in the array


// 'gin' => --.   ..  -.
// 'zen' => --..  .   -.

// Example:
// console.log(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])); // 2
// console.log(uniqueMorseRepresentations(["cat", "dog", "bear"]); // 3
// // -.-..--
// // -..-----.
// // -.....-.-.
// console.log(uniqueMorseRepresentations([])); // 0
// console.log(uniqueMorseRepresentations(['a', 'a']); //  1
// // .- 
// // .-
// console.log(uniqueMorseRepresentations(['gi', 'ze', 'a', 'a']);  // 2
// // --...
// // --...
// // .-
// // .-

// Data Structure
// Object

// Algorigthm
// Initate an output object
//  Iterate through each Word
    // Transrom the current word into its morse Table symbols
        // Use the morse Table object
// If the morse symbol doesn't exist in the output object, assign it, with the value as an array with the current word
// If the morse symbol does exist in the output object, push the current word into its values array
// Return the number of keys in the output object

const morseTable = {
  'a': ".-", 'b': "-...", 'c': "-.-.", 'd': "-..", 'e': ".", 'f': "..-.",
  'g': "--.", 'h': "....", 'i': "..", 'j': ".---", 'k': "-.-", 'l': ".-..",
  'm': "--", 'n': "-.", 'o': "---", 'p': ".--.", 'q': "--.-", 'r': ".-.", 
  's': "...", 't': "-", 'u': "..-", 'v': "...-", 'w': ".--", 'x': "-..-",
  'y': "-.--", 'z': "--..",
}

var uniqueMorseRepresentations = function(words) {
  let output = new Set();
  let morseWords = words.map(word => {
    let wordArr = word.split('');
    return wordArr.map(letter => {
      return morseTable[letter];
    }).join('');
  });

  morseWords.forEach(morseWord => {
      output.add(morseWord);
  });

  return output.size;
};


// Book Answer
// var uniqueMorseRepresentations = function(words) {

// }

console.log(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])); // 2
console.log(uniqueMorseRepresentations(["cat", "dog", "bear"])); // 3
// // -.-..--
// // -..-----.
// // -.....-.-.
console.log(uniqueMorseRepresentations([])); // 0
console.log(uniqueMorseRepresentations(['a', 'a'])); //  1
// // .- 
// // .-
console.log(uniqueMorseRepresentations(['gi', 'ze', 'a', 'a']));  // 2
// --...
// --...
// .-
// .-




