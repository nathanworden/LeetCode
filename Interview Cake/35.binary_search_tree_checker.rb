# def binary_search_tree?(root)
#   node_and_bounds_stack = []
#   node_and_bounds_stack << [root, -Float::INFINITY, Float::INFINITY]
  
#   until node_and_bounds_stack.empty?
#     node, lower_bound, upper_bound = node_and_bounds_stack.pop
#     return false if node.value <= lower_bound || node.value >= upper_bound
#     node_and_bounds_stack << [node.left, lower_bound, node.value] if node.left
#     node_and_bounds_stack << [node.right, node.value, upper_bound] if node.right
#   end
#   true
# end





# def binary_search_tree?(root)
#   node_and_bounds_stack = []
#   node_and_bounds_stack << [root, -Float::INFINITY, Float::INFINITY]
  
#   until node_and_bounds_stack.empty?
#     node, lower_bound, upper_bound = node_and_bounds_stack.pop
#     return false if node.value <= lower_bound || node.value >= upper_bound
#     node_and_bounds_stack << [node.left, lower_bound, node.value] if node.left
#     node_and_bounds_stack << [node.right, node.value, upper_bound] if node.right
#   end
#   true
# end




# def binary_search_tree?(root)
#   node_and_bounds_stack = []
#   node_and_bounds_stack << [root, -Float::INFINITY, Float::INFINITY]
#   until node_and_bounds_stack.empty?
#     node, lower_bound, upper_bound = node_and_bounds_stack.pop
#     return false if node.value <= lower_bound || node.value >= upper_bound
#     node_and_bounds_stack << [node.left, lower_bound, node.value] if node.left
#     node_and_bounds_stack << [node.right, node.value, upper_bound] if node.right
#   end
#   true
# end


# Instead of allocating a stack ourselves, we could write a recursive method that uses the call stack. This would work but it would be vulnerable to stack overflow. However, the code does end up quite a bit claner:

def binary_search_tree?(root, lower_bound = -Float::INFINITY, upper_bound = Float::INFINITY)
  if !root
    true
  elsif root.value >= upper_bound || root.value <= lower_bound
    false
  else
    binary_search_tree?(root.left, lower_bound, root.value) && binary_search_tree?(root.right, root.value, upper_bound)
  end
end

# Tests

class BinaryTreeNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value) 
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end
end

# Nathan Tests
# def run_tests
#   root = BinaryTreeNode.new(50)
#   left = root.insert_left(30)
#   right = root.insert_right(80)
#   left_left = left.insert_left(20)
#   left_right = left.insert_right(40)
#   right_left = right.insert_left(70)
#   right_right = right.insert_right(90)
#   assert_true(root)

#   root = BinaryTreeNode.new(50)
#   left = root.insert_left(30)
#   right = root.insert_right(80)
#   left_left = left.insert_left(20)
#   left_right = left.insert_right(60)
#   right_left = right.insert_left(70)
#   right_right = right.insert_right(90)
#   assert_false(root)
# end

# def assert_true(value)
#   p binary_search_tree?(value) ? "Pass" : "Fail"
# end

# def assert_false(value)
#   p binary_search_tree?(value) ? "Fail" : "Pass"
# end

# run_tests

# Interview Cake Tests
def run_tests
  desc = 'valid full tree'
  tree = BinaryTreeNode.new(50)
  left = tree.insert_left(30)
  right = tree.insert_right(70)
  left.insert_left(10)
  left.insert_right(40)
  right.insert_left(60)
  right.insert_right(80)
  result = binary_search_tree?(tree)
  assert_true(result, desc)

  desc = 'both subtrees valid'
  tree = BinaryTreeNode.new(50)
  left = tree.insert_left(30)
  right = tree.insert_right(80)
  left.insert_left(20)
  left.insert_right(60)
  right.insert_left(70)
  right.insert_right(90)
  result = binary_search_tree?(tree)
  assert_false(result, desc)

  desc = 'descending linked list'
  tree = BinaryTreeNode.new(50)
  left = tree.insert_left(40)
  left_left = left.insert_left(30)
  left_left_left = left_left.insert_left(20)
  left_left_left.insert_left(10)
  result = binary_search_tree?(tree)
  assert_true(result, desc)

  desc = 'out of order linked list'
  tree = BinaryTreeNode.new(50)
  right = tree.insert_right(70)
  right_right = right.insert_right(60)
  right_right.insert_right(80)
  result = binary_search_tree?(tree)
  assert_false(result, desc)

  desc = 'one node tree'
  tree = BinaryTreeNode.new(50)
  result = binary_search_tree?(tree)
  assert_true(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests