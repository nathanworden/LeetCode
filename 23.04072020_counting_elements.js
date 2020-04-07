// Probelm
//  Given an integer array, arr, count element x such that x + 1 is also in arr
// If there are duplicates in arr, count them seperatley

// If there are multiple xs in the array, they get counted individuall if x + 1 exists.

// If two x + 1s exist, that only counts for one x

// Examples

// Data Structure
// Array

// Algorithm
// For each element (x), search the array and see if (x + 1) exists
// If it does, increase the count
// Return the count


var countElements = function(arr) {
  let count = 0;
  arr.forEach((num, idx, array) => {
    if (array.includes(num + 1)) {count += 1}
  }); 

  return count;
};

// var countElements = function(arr) {
//   let count = 0;
//   arr.forEach(num => {
//     if (arr.includes(num + 1)) {
//       count += 1;
//     }
//   });

//   return count;
// }


console.log(countElements([1,2,3])                === 2);
console.log(countElements([1,1,3,3,5,5,7,7])      === 0);
console.log(countElements([1,3,2,3,5,0])          === 3);
console.log(countElements([1,1,2,2])              === 2);
console.log(countElements([-4, 5, 6, 8])          === 1);
console.log(countElements([-9, -4, 2, 2, -8, -5]) === 2);
console.log(countElements([])                     === 0);



