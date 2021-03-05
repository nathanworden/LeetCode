require 'pry'

def find_repeat(numbers)
  binding.pry
  floor, ceiling = 1, numbers.length - 1

  while floor < ceiling

    # Divide our range 1..n into an upper range and lower range
    # (such that they don't overlap).
    # Lower range is floor..midpoint.
    # Upper range is midpoint + 1..ceiling.
    midpoint = floor + (ceiling - floor) / 2
    lower_range_floor, lower_range_ceiling = floor, midpoint
    upper_range_floor, upper_range_ceiling = midpoint + 1, ceiling

    # Count number of items in lower range.
    items_in_lower_range = numbers.count do |item|
      item >= lower_range_floor && item <= lower_range_ceiling
    end

    distinct_possible_integers_in_lower_range =
      lower_range_ceiling - lower_range_floor + 1

    if items_in_lower_range > distinct_possible_integers_in_lower_range
      # There must be a duplicate in the lower range
      # so use the same approach iteratively on that range.
      floor, ceiling = lower_range_floor, lower_range_ceiling
    else
      # There must be a duplicate in the upper range
      # so use the same approach iteratively on that range.
      floor, ceiling = upper_range_floor, upper_range_ceiling
    end
  end

  # Floor and ceiling have converged.
  # We found a number that repeats!
  floor
end




def run_tests
  desc = 'one'
  actual = find_repeat([1, 2, 3, 4, 5, 6, 1, 7])
  expected = 1
  assert_equal(actual, expected, desc)
  
  # desc = 'two'
  # actual = find_repeat([3, 2, 2])
  # expected = 2
  # assert_equal(actual, expected, desc)
  
  # desc = 'just the repeated number'
  # actual = find_repeat([1, 1])
  # expected = 1
  # assert_equal(actual, expected, desc)

  # desc = 'short array'
  # actual = find_repeat([1, 2, 3, 2])
  # expected = 2
  # assert_equal(actual, expected, desc)

  # desc = 'medium array'
  # actual = find_repeat([1, 2, 5, 5, 5, 5])
  # expected = 5
  # assert_equal(actual, expected, desc)

  # desc = 'long array'
  # actual = find_repeat([4, 1, 4, 8, 3, 2, 7, 6, 5])
  # expected = 4
  # assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests