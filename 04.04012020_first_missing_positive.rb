# Sort the array
# Create a comparison array from the minimum to the maximum number
# Compare the two until you find a positive integer that doesn't match up
require 'pry'

# def first_missing_positive(nums)
#   return 1 if nums.empty? || (nums.length == 1 && nums[0] == 0)
#   sorted = nums.sort()
#   last = sorted[-1]
#   hedge = last + 1
#   full = (1..hedge).to_a
#   i = 0
#   while sorted[i] < 1 
#     sorted.shift
#     i += 1
#   end

#   i = 0
#   output = nil

#   loop do
#     output = full[i]
#     break if sorted[i] != full[i]
#     i += 1
#   end

#   return output
# end


def first_missing_positive(nums)
  i = 1
  while nums.include?(i)
    i += 1
  end

  i
end

p first_missing_positive([1,2,0])         # 3
p first_missing_positive([3,4,-1,1])    # 2
p first_missing_positive([7,8,9,11,12]) # 1
p first_missing_positive([0])           # 1
p first_missing_positive([])             # 1
p first_missing_positive([9])             # 1
p first_missing_positive([2147483647])    # 1