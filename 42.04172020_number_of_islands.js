
// Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

// Problem:
// Given an Array of Arrays, count the number of 1 clumps that are surrounded by 0s horizontally and vertically.
// Output: integer (the number of clumps)

// An individual island only cares about the numbers before and after it in its own array (index + and - 1) and the 2 elements in the arrays before and after it that have the same index.

// Data Structure
// Array

// Algorithm
// Look at the first element in the first array.
// Is this element a 1? If not, move on to the next element.
// If so (*Start island*)
// Have the elements already around the current element already been checked?
    // If yes, this element is "done"
    // If no, check them:
        // Is the element before or after it in the array also a 1?""
            // If it is, you have to check those ones before you can end the island.
            // No? move on.
        // Is the element in the array previous or after with the same index also a 1?
            // If it is, you have to check those ones before you can end the island.
            // No? move on.
    // Once all elements signal "done", you can increase the count of the islands by 1.
// Move onto the next element. If the element is a 1 and it has already been seen, move on.
// If the element is a 0, move on.
// If the element is a 1 and it hasn't been seen, (*Start island*).


var numIslands = function(grid) {
    
    const callDFS = (i, j) => {
        if(i < 0 || i >= grid.length || j < 0 || j >= grid[i].length || grid[i][j] === '0') return;
        
        grid[i][j] = '0';
        
        callDFS(i-1, j); // up
        callDFS(i+1, j); // down
        callDFS(i, j-1); // left
        callDFS(i, j+1); // right
    }
    
    let count = 0;
    for(let i = 0; i < grid.length; i++) {
        
        for(let j = 0; j < grid[i].length; j++) {
            
            if(grid[i][j] === '1') {
                count++;
                callDFS(i, j)
            }
        }
    }
    return count;
};





console.log(numIslands([["1","1","1","1","0"],
                        ["1","1","0","1","0"],
                        ["1","1","0","0","0"],
                        ["0","0","0","0","0"]])); // 1

console.log(numIslands([["1","1","0","0","0"],
                        ["1","1","0","1","0"],
                        ["1","1","0","0","0"],
                        ["0","0","0","0","0"]])); // 2

console.log(numIslands([["1","1","1","1","0"],
                        ["1","0","0","1","0"],
                        ["0","1","0","0","0"],
                        ["0","0","0","0","0"]])); // 2

console.log(numIslands([["0","1","1","1","0"],
                        ["1","1","0","0","0"],
                        ["1","1","0","1","0"],
                        ["0","0","0","0","0"]])); // 2

console.log(numIslands([["1","0","1","1","0"],
                        ["0","0","0","0","0"],
                        ["1","1","0","0","0"],
                        ["0","0","0","0","0"]])); // 3

console.log(numIslands([["1","0","1","1","0"],
                        ["0","0","0","0","0"],
                        ["1","1","0","0","0"],
                        ["0","0","0","1","0"]])); // 4

console.log(numIslands([["1","0","1","0","1"],
                        ["0","0","0","0","0"],
                        ["1","1","0","0","0"],
                        ["0","0","0","1","0"]])); // 5
