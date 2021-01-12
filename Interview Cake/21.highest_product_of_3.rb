# def highest_product_of_3(array_of_ints)
#   raise error if array_of_ints.length < 3
#   p array_of_ints.combination(3).to_a.map {|arr| arr.reduce(&:*)}.max
# end




# def highest_product_of_3(array_of_ints)
#   raise error if array_of_ints.length < 3
#   highest = [array_of_ints[0], array_of_ints[1], array_of_ints[2]].sort.reverse
#   lowest = [array_of_ints[0], array_of_ints[1], array_of_ints[2]].sort
#   i = 3
#   while i < array_of_ints.length
#     current = array_of_ints[i]
#     if current > highest[0]
#       highest[2] = highest[1]
#       highest[1] = highest[0]
#       highest[0] = current
#     elsif current > highest[1]
#       highest[2] = highest[1]
#       highest[1] = current
#     elsif current > highest[2]
#       highest[2] = current
#     elsif current < lowest[0]
#       lowest[1] = lowest[0]
#       lowest[0] = current
#     elsif current < lowest[1]
#       lowest[1] = current
#     end
#     i += 1
#   end
  
#   lowest.pop
#   if lowest.all? {|num| num < 0 } && lowest.all? {|num| num.abs > highest[1]} && !array_of_ints.all? {|num| num < 0}
#     lowest[0] * lowest[1] * highest[0]
#   else
#     highest[0] * highest[1] * highest[2]
#   end
# end


# def highest_product_of_3(array_of_ints)
#   raise ArgumentError, 'Less than 3 items!' if array_of_ints.length < 3
#   highest = array_of_ints.first(2).max
#   lowest = array_of_ints.first(2).min
#   highest_product_of_2 = array_of_ints[0] * array_of_ints[1]
#   lowest_product_of_2 = array_of_ints[0] * array_of_ints[1]
#   highest_product_of_3 = array_of_ints[0] * array_of_ints[1] * array_of_ints[2]
  
#   array_of_ints.each_with_index do |current, index|
#     next if index < 2
#     highest_product_of_3 = [highest_product_of_3, current * highest_product_of_2, current * lowest_product_of_2].max
#     highest_product_of_2 = [highest_product_of_2, current * highest, current * lowest].max
#     lowest_product_of_2 = [lowest_product_of_2, current * highest, current * lowest].min
#     highest = [highest, current].max
#     lowest = [lowest, current].min
#   end
#   highest_product_of_3
# end









# Tests

def run_tests
  actual = highest_product_of_3([1, 2, 3, 4])
  expected = 24
  assert_equal(actual, expected, 'short array')

  actual = highest_product_of_3([6, 1, 3, 5, 7, 8, 2])
  expected = 336
  assert_equal(actual, expected, 'longer array')

  actual = highest_product_of_3([-5, 4, 8, 2, 3])
  expected = 96
  assert_equal(actual, expected, 'array has one negative')

  actual = highest_product_of_3([-10, 1, 3, 2, -10])
  expected = 300
  assert_equal(actual, expected, 'array has two negatives')

  actual = highest_product_of_3([-5, -1, -3, -2])
  expected = -6
  assert_equal(actual, expected, 'array is all negatives')

  assert_raises('empty array raises error') do
    highest_product_of_3([])
  end

  assert_raises('one number raises error') do
    highest_product_of_3([1])
  end

  assert_raises('two numbers raises error') do
    highest_product_of_3([1, 1])
  end
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

def assert_raises(desc)
  yield
  puts "#{desc} ... FAIL"
rescue
  puts "#{desc} ... PASS"
end

run_tests