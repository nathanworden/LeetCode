# A binary search algoritm finds an intem in a sorted array in O(lg(n)) time.

# Let's say we have a sorted array of numbers. To find a number with a binary search we:

# Iterative version:


def binary_search(target, nums)
  floor_index = -1
  ceiling_index = nums.length
  while floor_index + 1 < ceiling_index
    distance = ceiling_index - floor_index
    half_distance = distance / 2
    guess_index = floor_index + half_distance
    guess_value = nums[guess_index]
    if guess_value == target
      return true
    elsif guess_value > target
      ceiling_index = guess_index
    else
      floor_index = guess_index
    end
  end
  false
end