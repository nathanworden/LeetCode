def kth_to_last_node(k, head)

  # Return the kth to last node in the linked list.
  

  nil
end


















# Tests

class LinkedListNode
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

def run_tests
  fourth = LinkedListNode.new(4)
  third = LinkedListNode.new(3, fourth)
  second = LinkedListNode.new(2, third)
  first = LinkedListNode.new(1, second)

  desc = 'first to last node'
  actual = kth_to_last_node(1, first)
  expected = fourth
  assert_equal(actual, expected, desc)

  desc = 'second to last node'
  actual = kth_to_last_node(2, first)
  expected = third
  assert_equal(actual, expected, desc)

  desc = 'first node'
  actual = kth_to_last_node(4, first)
  expected = first
  assert_equal(actual, expected, desc)

  desc = 'k greater than linked list length'
  assert_raises(desc) { kth_to_last_node(5, first) }

  desc = 'k is zero'
  assert_raises(desc) { kth_to_last_node(0, first) }
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