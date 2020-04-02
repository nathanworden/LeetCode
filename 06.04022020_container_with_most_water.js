// Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

// Note: You may not slant the container and n is at least 2.


// The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

// Probelm 
// Find the two elements in the array that reresent the largest area.
// INput: array of integers
// Output: An integer represeting the area

// Example
// Input [12, 4, 3]
// 1st iteration:
// length: 1 X 4 (area would be 4)
// 2nd iteration:
// length: 2 X 3 (area would be 6)
// return 6
// 3rd iteration:
// length: 1 X 3 (area would be 3)

// Data Structures
// Numbers
// array

// Algoritm
// Iterate through every number in the input array
    // Obtain the index of the current number
// Compare that current number with every other number after in the input array.
    // Iterate through the indexes greater then the index of the current number until you reach the end of the array (the largest index)
    // Calculate the length
        // Subtract the smaller index from the larger index
    // Calculate the height
      // The smaller number
    // Calcualte the area: multiply the length and height
// Store the area in an variable
// Compare the area to the subsequent pairs and keep the larger one each time.


/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function(heights) {
   let areas = [0];
    heights.forEach((firstLine, idxFirstLine) => {
      let secondLines = heights.slice(idxFirstLine + 1, heights.length);
      secondLines.forEach((secondLine, idxSecondLine) => {
        let length = idxSecondLine + 1;
        let height = Math.min(firstLine, secondLine);
        let area = length * height;
        if (area > areas[0]) {
          areas.pop();
          areas.push(area);
        }
      });

    });

    return areas[0];
};

console.log(maxArea([12, 4, 3]) === 6);
console.log(maxArea([1,8,6,2,5,4,8,3,7]))//) === 49);














