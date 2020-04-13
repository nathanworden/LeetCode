// Problem
// Given an array of integers, output the "weight of the last stone:"
// Pick the two bigest integers
  // if they are equal, delete them both
  // If they are different, delete the first and mutate the second to be the bigger minus the smaller.
// Continue until there is one stone left (or 0). Return this last stone

//


var lastStoneWeight = function(stones) {
  while (stones.length > 1) {
    stones = stones.sort((a, b) => {
      if (a > b) {
        return 1;
      } else if (a < b) {
        return -1;
      } else if (a === b) {
        return 0;
      }
    });
    let biggest = stones[stones.length - 1];
    let secondBiggest = stones[stones.length - 2];
    let diff = 0;
    if (secondBiggest < biggest) {
      diff = biggest - secondBiggest;
    }
  
    stones.pop();
    stones.pop();
    if (diff > 0) {stones.push(diff)};
  }

  return stones[0] ? stones[0] : 0;
};

console.log(lastStoneWeight([2,7,4,1,8,1]));     // 1
console.log(lastStoneWeight([1, 1, 1, 1, 1, 1]));  // 0
console.log(lastStoneWeight([50, 2]));      // 48
console.log(lastStoneWeight([1000, 50, 50, 900, 200, 700])); // 300


