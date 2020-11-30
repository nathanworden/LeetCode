// Problem
// Given an input array and a target value, return the index of the target, otherwise -1.

// Iterate through each item in the array, if the item matches the target, return its index. If it doesn't appear, return -1.

var search = function(nums, target) {
  for (let i = 0; i < nums.length; i += 1) {
    if (nums[i] === target) {
      return i;
    }
  }

  return -1;
};

// Look at the middle of the array
    // Get the length of the input array.
    // Divide it by two
    // start at that index

    var search = functions(nums, target) {
      
    }


console.log(search([4,5,6,7,0,1,2], 0)); // 4
console.log(search([4,5,6,7,0,1,2], 3)); // -1