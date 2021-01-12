def get_closing_paren(sentence, opening_paren_index)

  # Find the position of the matching closing parenthesis.
  

  -1
end


















# Tests

def run_tests
  desc = 'all openers then closers'
  actual = get_closing_paren('((((()))))', 2)
  expected = 7
  assert_equal(actual, expected, desc)

  desc = 'mixed openers and closers'
  actual = get_closing_paren('()()((()()))', 5)
  expected = 10
  assert_equal(actual, expected, desc)

  desc = 'no matching closer'
  assert_raises(desc) { get_closing_paren('()(()', 2) }
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