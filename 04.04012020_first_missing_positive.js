


// var firstMissingPositive = function(nums) {
//     let i = 1;
//     while (nums.includes(i)) {
//       i += 1;
//     }

//     return i;
// };


var firstMissingPositive = function(nums) {
  let set = new Set(nums);
  let num = 1;
  while (set.has(num)) {
    num += 1;
  }

  return num;
}


console.log(firstMissingPositive([1,2,0]));         // 3
console.log(firstMissingPositive([3,4,-1,1]));      // 2
console.log(firstMissingPositive([7,8,9,11,12]));   // 1
console.log(firstMissingPositive([0]));             // 1
console.log(firstMissingPositive([]));              // 1
console.log(firstMissingPositive([9]));             // 1
console.log(firstMissingPositive([2147483647]));    // 1