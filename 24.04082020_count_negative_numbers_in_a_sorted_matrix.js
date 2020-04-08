// Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise. 

// Return the number of negative numbers in grid.

var countNegatives = function(grid) {
    let count = 0;
    grid.forEach(subArr => {
      subArr.forEach(ele => {
        if (ele < 0) {
          count += 1;
        }
      });
    });

    return count;
};


console.log(countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])); // 8
console.log(countNegatives([[3,2],[1,0]])); // 0
console.log(countNegatives([[1,-1],[-1,-1]])); // 3
console.log(countNegatives([[-1]])); // 1
console.log(countNegatives([[-2, -2, -2], [-3], [0]])); // 4

// Example 1:

// Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
// Output: 8
// Explanation: There are 8 negatives number in the matrix.
// Example 2:

// Input: grid = [[3,2],[1,0]]
// Output: 0
// Example 3:

// Input: grid = [[1,-1],[-1,-1]]
// Output: 3
// Example 4:

// Input: grid = [[-1]]
// Output: 1
 

// Constraints:

// m == grid.length
// n == grid[i].length
// 1 <= m, n <= 100
// -100 <= grid[i][j] <= 100