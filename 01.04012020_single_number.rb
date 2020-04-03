## Problem
# Find an element that only appears once among elements that appears twice
# def single_number(nums)
#   only_once = nums.select {|element| nums.count(element) == 1}
#   only_once[0]
# end


## Passed
def single_number(nums)
   counts = {}
    nums.each do |num| 
        if counts[num] 
            counts.delete(num)
        else
            counts[num] = 1
        end
    end
    
    counts.keys[0]
end


## Too Slow
# def single_number(nums)
#    counts = []
#     nums.each do |num| 
#         if counts.include?(num) 
#             counts.delete(num)
#         else
#             counts << num
#         end
#     end
    
#     counts[0]
# end

def single_number(nums)
  (2 * nums.uniq.sum) - nums.sum
end

p single_number([2, 2, 1])
p single_number([4, 1, 2, 1, 2])

[4, 1, 2]
7
14
9
14 - 9

