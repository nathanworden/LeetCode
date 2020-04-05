// Problem
// There are two sorted arrays nums1 and nums2 of size m and n respectivley
// Find the median of the two sorted arrays.
// The overall run time complexity should be O(log(m+n)).
        // I think this menas it should only go through each array once?
// You may assume nums1 and nums2 cannot both be empty

// input: 2 arrays
// output: number (the median of the two)

// Arrays can have even or odd numbers
// Arrays can have different lengths

// Examples
// console.log(findMedianSortedArrays([1, 3], [2]));    // 2.0
// console.log(findMedianSortedArrays([1, 2], [3, 4]));  //   2.5
// console.log(findMedianSortedArrays([], [1, 2, 3])); // 2.0
// console.log(findMedianSortedArrays([1, 3, 5, 7], [5, 5])); // 5
// console.log(findMedianSortedArrays([1, 3, 4, 7], [5]); // 4
// console.log(findMedianSortedArrays([1.5, 3.5, 5.7, 75], [4.5, 5.5]) // 5

// Data Structure
// Array

// Algorithm
// Combine the arrays in sorted order
// Check if the array has an even number of elements or an odd number of elements.
// If it is odd, The element at length / 2 + 1 will be the middle
// If it is even, take two elements
    // If two, add them together and divide by 2
    // Return


var findMedianSortedArrays = function(nums1, nums2) {
    let combined = nums1.concat(nums2).sort((a, b) => {
      if (a < b) {
        return -1;
      } else if (a > b) {
        return 1;
      } else {
        return 0;
      }
    });

    let len = combined.length;
    let middle;
    if (len % 2 === 0) {
      let firstIdx = Math.floor(len / 2) - 1;
      let secondIdx = Math.floor(len / 2);
      let median = (combined[firstIdx] + combined[secondIdx]) / 2
      return median
    } else if (len % 2 !== 0) {
      let medianIdx = Math.floor(len / 2);
      return combined[medianIdx]
    }
};


console.log(findMedianSortedArrays([1, 3], [2]));    // 2.0
console.log(findMedianSortedArrays([1, 2], [3, 4]));  //   2.5
console.log(findMedianSortedArrays([], [1, 2, 3])); // 2.0
console.log(findMedianSortedArrays([1, 3, 5, 7], [5, 5])); // 5
console.log(findMedianSortedArrays([1, 3, 4, 7], [5])); // 4
console.log(findMedianSortedArrays([1.5, 3.5, 5.7, 75], [4.5, 5.5])) // 5
console.log(findMedianSortedArrays([3], [-2, -1])); // -1












