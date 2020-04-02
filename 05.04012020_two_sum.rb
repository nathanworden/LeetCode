## Problem
# Given an array and a target integer
# Find two numbers in the array that add up to the target
# and return those two numbers indices

# input: an array and an integer
# output an array


# Example
# [2, 3, 4, 5], target = 6
# [0, 2]

# Data Structre 
# Array

# Algoritm
# iterate through each number in the array
# iterate thrugh each number after current num
# does current num plus other num = target?

def two_sum(nums, target)
  output = []
  nums.each_with_index do |num, idx|
    not_current = idx + 1
    temp_arr = nums[not_current..-1]
    if temp_arr.include?(target - num)
      output << idx
      temp_idx = temp_arr.index(target - num)
      output << idx + temp_idx + 1
      break
    end
  end

  output
end


p two_sum([2, 3, 4, 5], 6) #== [0, 2]
p two_sum([2, 7, 11, 15], 9) # == [0, 1]
p two_sum([-2, 4, 5, 6, 7, 2], 0) # == [0, 5]
p two_sum([3, 2, 4], 6) # == [1, 2]
p two_sum([3, 3, 2, 5], 6) # [0, 1]]