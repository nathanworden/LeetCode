def binary_search(target, nums)
  floor_index = -1
  ceiling_index = nums.length
  while floor_index + 1 < ceiling_index
    guess_index = (floor_index + ceiling_index) / 2
    guess_value = nums[guess_index]
    return true if guess_value == target
    if guess_value > target
      ceiling_index = guess_index
    else
      floor_index = guess_index
    end
  end
  false
end