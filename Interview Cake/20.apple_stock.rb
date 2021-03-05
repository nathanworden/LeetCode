# def get_max_profit(stock_prices)
#   return error if stock_prices.length <= 1
#   big_diff = -Float::INFINITY
#   stock_prices.each_with_index do |buy, idx|
#     sub_arr = stock_prices[(idx + 1)..-1]
#     sub_arr.each do |sell|
#       big_diff = (sell - buy) if (sell - buy) > big_diff
#     end
#   end
  
#   big_diff
# end


# def get_max_profit(stock_prices)
#     return error if stock_prices.length <= 1
#     min = stock_prices[0]
#     max = stock_prices[1]
#     big_diff = max - min
#     stock_prices.each_with_index do |current, idx|
#       next if stock_prices.length - 1 == idx
#       if current < min
#         min = current 
#         max = stock_prices[idx + 1]
#       end
#       max = stock_prices[idx + 1] if stock_prices[idx + 1] > max
#       big_diff = (max - min) if (max - min) > big_diff
#     end
#     big_diff
#   end
# min: 9
# max: 7
# big_diff: -2
# [9, 7, 4, 1]






  # Iterate throug each price
  # Save the global minimum
  # Save the greedy maximum found as the difference between the current price and the global minimum
  def get_max_profit(stock_prices)
    min = stock_prices[0]
    i = 1
    current = stock_prices[i]
    big_diff = current - min
    while i < stock_prices.length
      big_diff = current - min if current - min > big_diff
      min = current if current < min
      i += 1
      current = stock_prices[i]
    end
    big_diff
  end
  
  
  
  
  
  
  
  
  # Tests
  
  def run_tests
    desc = 'price goes up then down'
    actual = get_max_profit([1, 5, 3, 2])
    expected = 4
    assert_equal(actual, expected, desc)
  
    desc = 'price goes down then up'
    actual = get_max_profit([7, 2, 8, 9])
    expected = 7
    assert_equal(actual, expected, desc)
  
    desc = 'price goes up all day'
    actual = get_max_profit([1, 6, 7, 9])
    expected = 8
    assert_equal(actual, expected, desc)
  
    desc = 'price goes down all day'
    actual = get_max_profit([9, 7, 4, 1])
    expected = -2
    assert_equal(actual, expected, desc)
  
    desc = 'price stays the same all day'
    actual = get_max_profit([1, 1, 1, 1])
    expected = 0
    assert_equal(actual, expected, desc)
  
    desc = 'error with empty prices'
    assert_raises(desc) {
      get_max_profit([])
    }
  
    desc = 'error with one price'
    assert_raises(desc) {
      get_max_profit([1])
    }
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