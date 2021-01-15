# def fib(n)
#   hsh = []
#   if n == 0 || n == 1
#     n
#   elsif n < 0
#     raise ArgumentError
#   elsif hsh[n]
#     hsh[n]
#   else
#     result = fib(n - 1) + fib(n - 2)
#     hsh[n] = result
#     result
#   end
# end



def fib(n)
  return n if n == 1 || n == 0
  raise ArgumentError if n < 0
  latest = 1
  prior = 0
  (n - 1).times do |_|
    prior, latest = latest, latest + prior
    # temp = latest
    # latest = prior + latest
    # prior = temp
  end
  latest
end












# Tests

def run_tests
  desc = 'zeroth fibonacci'
  actual = fib(0)
  expected = 0
  assert_equal(actual, expected, desc)

  desc = 'first fibonacci'
  actual = fib(1)
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'second fibonacci'
  actual = fib(2)
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'third fibonacci'
  actual = fib(3)
  expected = 2
  assert_equal(actual, expected, desc)

  desc = 'fifth fibonacci'
  actual = fib(5)
  expected = 5
  assert_equal(actual, expected, desc)

  desc = 'tenth fibonacci'
  actual = fib(10)
  expected = 55
  assert_equal(actual, expected, desc)

  desc = 'tenth fibonacci'
  actual = fib(50)
  expected = 12586269025
  assert_equal(actual, expected, desc)

  desc = 'negative fibonacci'
  assert_raises(desc) { fib(-1) }
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