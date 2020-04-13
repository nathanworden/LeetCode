// Problem:
// Given an integer, convert it to a roman numeral.
// Rules:
// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000


// Symbols are added except when:
// I can be placed before V (5) and X (10) to make 4 and 9. 
// X can be placed before L (50) and C (100) to make 40 and 90. 
// C can be placed before D (500) and M (1000) to make 400 and 900.

// Algorithm
// Turn the number into a string and split it into an array
// Reverse the array
// Transform each number back to a Number from a string
// Multiply it by its index
// Reverse the array again
// Iterate through each number
// Use a look up object to tranform the number to a symbol.
    // If the 4 or a 9, use the special rule
    // 

const table = {
  1: "I",
  4: "IV",
  5: "V",
  6: "VI",
  7: "VII",
  8: "VIII",
  9: "IX",
  10: "X",
  40: "XL",
  50: "L",
  90: "XC",
  100: "C",
  400: "CD",
  500: "D",
  900: "CM",
  1000: "M",
}

var intToRoman = function(num) {
    let str = String(num);
    let arr = str.split('');
    let reversed = arr.reverse();
    let multiplied = reversed.map((num, idx) => {
      let expanded =  num * (10 ** (idx));
      return expanded;
      if (table[expanded]) {
        return table[expanded];
      } else if (expanded <= 3) {
        return table['1'].repeat(expanded);
      } else if (String(expanded).match(/4/)) {
        return table[expanded];
      } else if (expanded > 5 && expanded < 9) {
        return table[expanded];
      } else if (expanded > 10 && expanded < 50) {
        let times = expanded / 10;
        return table[10].repeat(times);
      } else if (expanded > 100 && expanded < 500) {
        let times = expanded / 100;
        return table[100].repeat(times);
      } else if (expanded >= 1000) {
        let times = (expanded / 1000);
        return table[1000].repeat(times)
      }
    });

    return multiplied.reverse().join('');
};

console.log(intToRoman(2)     )//===       "II");        
console.log(intToRoman(3)     )//===       "III"); 
console.log(intToRoman(4)     )//===       "IV"); 
console.log(intToRoman(9)     )//===       "IX"); 
console.log(intToRoman(20)    )//===       "XX"); 
console.log(intToRoman(47)    )//===      "XLVII"); 
console.log(intToRoman(58)    )//===      "LVIII"); 
console.log(intToRoman(60)    )//===      "LX");
console.log(intToRoman(200)   )//===    "CC");
console.log(intToRoman(300)   )//===    "CCC");
console.log(intToRoman(448)   )//===     "CDXLVIII"); 
console.log(intToRoman(1994)  )//===     "MCMXCIV"); 
console.log(intToRoman(2999)  )//===     "MMCMXCIX"); 




 