def reverse!(string)
  swaps = string.length / 2
  swaps.times do |idx|
    temp = string[idx]
    last = (string.length - 1) - idx
    string[idx] = string[last]
    string[last] = temp
  end
  string
end

# def reverse!(string)
#   string.reverse!
# end






def reverse!(string)
  length = string.length - 1
  (length / 2).times do |idx|
    string[idx], string[length - idx] = string[length - idx], string[idx]
  end
  string
end




















# Tests

def run_tests
  desc = 'empty string'
  string = ''
  reverse!(string)
  expected = ''
  assert_equal(string, expected, desc)

  desc = 'single character string'
  string = 'A'
  reverse!(string)
  expected = 'A'
  assert_equal(string, expected, desc)

  desc = 'longer string'
  string = 'ABCDE'
  reverse!(string)
  expected = 'EDCBA'
  assert_equal(string, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests