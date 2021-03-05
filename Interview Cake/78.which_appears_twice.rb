def find_repeat(numbers)

  # Find the number that appears twice.
  

  0
end


















# Tests

def run_tests
  desc = 'short array'
  actual = find_repeat([1, 2, 1])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'medium array'
  actual = find_repeat([4, 1, 3, 4, 2])
  expected = 4
  assert_equal(actual, expected, desc)

  desc = 'long array'
  actual = find_repeat([1, 5, 9, 7, 2, 6, 3, 8, 2, 4])
  expected = 2
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests