# def get_products_of_all_ints_except_at_index(int_array)
#   raise ArgumentError "input array too small" if int_array.length < 2
#   int_array.map.with_index do |num, idx| 
#     sub_arr = int_array.dup
#     sub_arr[idx] = 1
#     sub_arr.reduce(&:*)
#   end.to_a
# end

# def get_products_of_all_ints_except_at_index(int_array)
#   if int_array.length < 2
#     raise IndexError, 'Getting the product of numbers at other indicies requires at least 2 numbers'
#   end
  
#   products_of_all_ints_except_at_index = []
#   product_so_far = 1
#   i = 0
#   while i < int_array.length
#     products_of_all_ints_except_at_index[i] = product_so_far
#     product_so_far *= int_array[i]
#     i += 1
#   end
  
#   product_so_far = 1
#   i = int_array.length - 1
#   while i >= 0
#     products_of_all_ints_except_at_index[i] *= product_so_far
#     product_so_far *= int_array[i]
#     i -= 1
#   end
  
#   products_of_all_ints_except_at_index
# end





# def get_products_of_all_ints_except_at_index(int_array)
#   if int_array.length < 2
#     raise IndexError, 'Getting the product of numbers at other indicies requires at least 2 numbers'
#   end
#   int_array.map.with_index do |memo, index|
#     sub_arr = []
#     int_array.each_with_index do |num, idx| 
#       sub_arr << num unless index == idx
#     end
#     sub_arr.reduce(&:*)
#   end
# end













# Tests

def run_tests
  desc = 'short array'
  actual = get_products_of_all_ints_except_at_index([1, 2, 3])
  expected = [6, 3, 2]
  assert_equal(actual, expected, desc)

  desc = 'longer array'
  actual = get_products_of_all_ints_except_at_index([8, 2, 4, 3, 1, 5])
  expected = [120, 480, 240, 320, 960, 192]
  assert_equal(actual, expected, desc)

  desc = 'array has one zero'
  actual = get_products_of_all_ints_except_at_index([6, 2, 0, 3])
  expected = [0, 0, 36, 0]
  assert_equal(actual, expected, desc)

  desc = 'array has two zeros'
  actual = get_products_of_all_ints_except_at_index([4, 0, 9, 1, 0])
  expected = [0, 0, 0, 0, 0]
  assert_equal(actual, expected, desc)

  desc = 'one negative number'
  actual = get_products_of_all_ints_except_at_index([-3, 8, 4])
  expected = [32, -12, -24]
  assert_equal(actual, expected, desc)

  desc = 'all negative numbers'
  actual = get_products_of_all_ints_except_at_index([-7, -1, -4, -2])
  expected = [-8, -56, -14, -28]
  assert_equal(actual, expected, desc)

  desc = 'error with empty array'
  assert_raises(desc) { get_products_of_all_ints_except_at_index([]) }

  desc = 'error with one number'
  assert_raises(desc) { get_products_of_all_ints_except_at_index([1]) }
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