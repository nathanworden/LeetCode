// Problem:
// Given a string s, re-order the string using the following rules:
// 1. Pick the smalles character from s and append it to the result


// Algorithm

var sortString = function(s) {
  let output = [];
  let arr = s.split('');
  arr = arr.sort();


  while (arr.length > 0) {
    output.push(arr.shift());
    for (let idx = 0; idx < arr.length; idx += 1) {
      if (arr[idx] > output[output.length - 1]) {
        output.push(arr.splice(idx, 1)[0]);
        idx -=1;
      }
    }

    output.push(arr.pop());
    for (let endIdx = arr.length - 1; endIdx >= 0; endIdx -= 1) {
      if (arr[endIdx] < output[output.length - 1]) {
        output.push(arr.splice(endIdx, 1)[0]);
        endIdx += 1;
      }
    }
  }

  return output.join('');
};



console.log(sortString("aaaabbbbcccc") === "abccbaabccba");
console.log(sortString("rat") === "art");
console.log(sortString("leetcode") === "cdelotee");


console.log(sortString("ggggggg") === "ggggggg");
