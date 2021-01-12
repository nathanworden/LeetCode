class Stack

  # Initializes an empty stack.
  def initialize
    @items = []
  end

  # Pushes a new item onto the stack.
  def push(item)
    @items << item
  end

  # Removes and returns the last item.
  #
  # If the stack is empty, returns nil.
  def pop
    if @items.empty?
      nil
    else
      @items.pop
    end
  end

  # Returns the last item without removing it.
  def peek
    if @items.empty?
      nil
    else
      @items[-1]
    end
  end
end

class MaxStack

  # Implement the push, pop, and get_max methods.
  

  def push(item)
    item
  end

  def pop
    nil
  end

  def get_max
    nil
  end
end


















# Tests

def run_tests
  desc = 'stack usage'
  max_stack = MaxStack.new

  max_stack.push(5)

  actual = max_stack.get_max
  expected = 5
  assert_equal(actual, expected, desc)

  max_stack.push(4)
  max_stack.push(7)
  max_stack.push(7)
  max_stack.push(8)

  actual = max_stack.get_max
  expected = 8
  assert_equal(actual, expected, desc)

  actual = max_stack.pop
  expected = 8
  assert_equal(actual, expected, desc)

  actual = max_stack.get_max
  expected = 7
  assert_equal(actual, expected, desc)

  actual = max_stack.pop
  expected = 7
  assert_equal(actual, expected, desc)

  actual = max_stack.get_max
  expected = 7
  assert_equal(actual, expected, desc)

  actual = max_stack.pop
  expected = 7
  assert_equal(actual, expected, desc)

  actual = max_stack.get_max
  expected = 5
  assert_equal(actual, expected, desc)

  actual = max_stack.pop
  expected = 4
  assert_equal(actual, expected, desc)

  actual = max_stack.get_max
  expected = 5
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests