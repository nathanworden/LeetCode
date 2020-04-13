// Problem
// Given a binary tree, compute the length of the diameter of the tree.
// The diameter of a binary tree is the length of the longest path between any two nodes in a tree.
// The path may or may not pass through the root.
  //     1
  //    / \
  //   2   3    Answer: 3. Because the longest path is (4, 2, 1, 3)
  //  / \     
  // 4   5  


  //              1
  //          /       \
  //        2            3    
  //      /   \         /   \
  //     4     5       6      7
  //    / \   / \     / \    /  \
  //   8   9 10  11  12  13 14   15
  //  / \
  // 16  17

// Rules of a binary tree:
// The current node gets only two brances.
// Those brances are numbered the next two numbers available, left to right.

// Algorithm
// Given the largest number, how many powers of 2 would it take to get there?

// Given a number
// Create an array of arrays where each sub array has the numbers for each level of a power of 2
// Until num

// Is 11 - 8 less then or equal to 8 / 2?
// Is (num - (2 ** exp)) <= (2 ** exp) / 2 ?
// If so, result is (levels.length - 1 + levels.length - 2)

// My answer doesn't work with binary trees
// var diameterOfBinaryTree = function(root) {
//   let num = root[root.length -1];
//   let exp = 0;
//   let levels = [];
//   while (2 ** exp <= num) {
//     levels.push(2 ** exp);
//     exp += 1;
//   }

//   let powerLevel = (2**(exp-1));
//   let diff = num - (powerLevel);
//   let half = (powerLevel / 2)
//   if (diff < half) {
//     return levels.length - 1 + levels.length - 2
//   } else {
//     return 2 * (levels.length - 1)
//   }

//   return levels.length - 1;
// };

///////
// Other student's answer
function diameterOfBinaryTree(root) {
  let max = 0;

  function maxDepth(root) {
    if (root === null) return 0;
    let left = maxDepth(root.left);
    let right = maxDepth(root.right);

    max = Math.max(max, left + right);
    return Math.max(left, right) + 1
  }

  maxDepth(root);
  return max;
}

////

console.log(diameterOfBinaryTree([1,2,3,4,5])); // 3
// console.log(diameterOfBinaryTree([1, 2, 3, 4, 5, 6])); // 4
// console.log(diameterOfBinaryTree());
// console.log(diameterOfBinaryTree());
// console.log(diameterOfBinaryTree());













