def merge_arrays(my_array, alices_array)

  # Combine the sorted arrays into one large sorted array.
  my_idx = 0
  alice_idx = 0
  output = []
  while my_idx <= my_array.length - 1 || alice_idx <= alices_array.length - 1
    if my_array[my_idx].nil?
      output << alices_array[alice_idx]
      alice_idx += 1
    elsif alices_array[alice_idx].nil?
      output << my_array[my_idx]
      my_idx += 1
    elsif my_array[my_idx] < alices_array[alice_idx]
      output << my_array[my_idx]
      my_idx += 1
    elsif  alices_array[alice_idx] < my_array[my_idx]
      output << alices_array[alice_idx]
      alice_idx += 1
    else
      output << my_array[my_idx]
      output << alices_array[alice_idx]
      my_idx += 1
      alice_idx += 1
    end
  end

  output
end







# Tests

def run_tests
  desc = 'both arrays are empty'
  actual = merge_arrays([], [])
  expected = []
  assert_equal(actual, expected, desc)

  desc = 'first array is empty'
  actual = merge_arrays([], [1, 2, 3])
  expected = [1, 2, 3]
  assert_equal(actual, expected, desc)

  desc = 'second array is empty'
  actual = merge_arrays([5, 6, 7], [])
  expected = [5, 6, 7]
  assert_equal(actual, expected, desc)

  desc = 'both arrays have some numbers'
  actual = merge_arrays([2, 4, 6], [1, 3, 7])
  expected = [1, 2, 3, 4, 6, 7]
  assert_equal(actual, expected, desc)

  desc = 'arrays are different lengths'
  actual = merge_arrays([2, 4, 6, 8], [1, 7])
  expected = [1, 2, 4, 6, 7, 8]
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests