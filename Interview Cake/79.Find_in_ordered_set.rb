def contains?(ordered_array, number)

  # Check if an integer is present in the array.
  

  false
end


















# Tests

def run_tests
  desc = 'empty array'
  result = contains?([], 1)
  assert_false(result, desc)

  desc = 'one item array number present'
  result = contains?([1], 1)
  assert_true(result, desc)

  desc = 'one item array number absent'
  result = contains?([1], 2)
  assert_false(result, desc)

  desc = 'small array number present'
  result = contains?([2, 4, 6], 4)
  assert_true(result, desc)

  desc = 'small array number absent'
  result = contains?([2, 4, 6], 5)
  assert_false(result, desc)

  desc = 'large array number present'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 8)
  assert_true(result, desc)

  desc = 'large array number absent'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0)
  assert_false(result, desc)

  desc = 'large array number first'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1)
  assert_true(result, desc)

  desc = 'large array number last'
  result = contains?([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10)
  assert_true(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests