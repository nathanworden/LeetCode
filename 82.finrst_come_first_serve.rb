def first_come_first_served?(take_out_orders, dine_in_orders, served_orders)
  if served_orders.length == 0
    return true
  elsif take_out_orders.length > 0 && take_out_orders[0] == served_orders[0]
    first_come_first_served?(take_out_orders[1..-1], dine_in_orders, served_orders[1..-1])
  elsif dine_in_orders.length > 0 && dine_in_orders[0] == served_orders[0]
    first_come_first_served?(take_out_orders, dine_in_orders[1..-1], served_orders[1..-1])
  else
    false
  end
end

def run_tests
  desc = 'both registers have same number of orders'
  result = first_come_first_served?([1, 4, 5], [2, 3, 6], [1, 2, 3, 4, 5, 6])
  assert_true(result, desc)

  desc = 'registers have different lengths'
  result = first_come_first_served?([1, 5], [2, 3, 6], [1, 2, 6, 3, 5])
  assert_false(result, desc)

  desc = 'one register is empty'
  result = first_come_first_served?([], [2, 3, 6], [2, 3, 6])
  assert_true(result, desc)

  desc = 'served orders is missing orders'
  result = first_come_first_served?([1, 5], [2, 3, 6], [1, 6, 3, 5])
  assert_false(result, desc)

  desc = 'served orders has extra orders'
  result = first_come_first_served?([1, 5], [2, 3, 6], [1, 2, 3, 5, 6, 8])
  assert_false(result, desc)

  desc = 'one register has extra orders';
  result = first_come_first_served?([1, 9], [7, 8], [1, 7, 8]);
  assert_false(result, desc)

  desc = 'one register has unserved orders';
  result = first_come_first_served?([55, 9], [7, 8], [1, 7, 8, 9]);
  assert_false(result, desc)

  desc = 'order numbers are not sequential'
  result = first_come_first_served?([27, 12, 18], [55, 31, 8], [55, 31, 8, 27, 12, 18])
  assert_true(result, desc)

end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests