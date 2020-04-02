var singleNumber = function(nums) {
    let unique = [];
    for (let i = 0; i < nums.length; i += 1) {
      if (!unique.includes(nums[i])) { unique.push(nums[i])}
    }

  let uniqueSum =  unique.reduce((a, b) => a + b);
  let numsSum = nums.reduce((a, b) => a + b);
  return (3 * uniqueSum - numsSum) / 2;
};



console.log(singleNumber([2, 2, 3, 2])); // 3
console.log(singleNumber([0,1,0,1,0,1,99])) //99 