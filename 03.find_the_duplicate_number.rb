# Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

# Example 1:

# Input: [1,3,4,2,2]
# Output: 2
# Example 2:

# Input: [3,1,3,4,2]
# Output: 3
# Note:

# You must not modify the array (assume the array is read only).
# You must use only constant, O(1) extra space.
# Your runtime complexity should be less than O(n2).
# There is only one duplicate number in the array, but it could be repeated more than once.

def find_duplicate(nums)
  sorted = nums.sort
  i = 0
  loop do 
    return sorted[i] if sorted[i] == sorted[i - 1]
    i += 1
  end
end


# def find_duplicate(nums)
#   nums.select {|num| nums.count(num) > 1}[0]
# end


# def find_duplicate(nums)
#   counts = {}
#   output = nil
#   nums.each do |num|
#     counts[num] ? counts[num] += 1 : counts[num] = 1
#     output = num if counts[num] > 1
#   end

#   output
# end

p find_duplicate([1, 3, 4, 2, 2]) # 2
p find_duplicate([3, 1, 3, 4, 2]) # 3
p find_duplicate([2,2,2,2,2])     # 2

