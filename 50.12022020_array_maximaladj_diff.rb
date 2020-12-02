# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

# Example

# For inputArray = [2, 4, 1, 0], the output should be
# arrayMaximalAdjacentDifference(inputArray) = 3.

def arrayMaximalAdjacentDifference(a)

  a.each_cons(2).to_a#.map { |x| x.reduce(:-).abs }.max
  
end


inputArray = [10, 11, 13]

p arrayMaximalAdjacentDifference(inputArray)