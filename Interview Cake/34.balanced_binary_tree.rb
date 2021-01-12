def balanced?(tree_root)
  if tree_root.left.nil? && tree_root.right.nil?
    my_depth = depth(tree_root)
  end
  # Determine if the tree is superbalanced.
  if tree_root
    balanced?(tree_root.left)
    puts tree_root.value
    balanced?(tree_root.right)
  end
end

# def balanced?(tree_root)
#   return true unless tree_root
#   depths = []
#   nodes = []
#   nodes << [tree_root, 0]
#   until nodes.empty?
#     node, depth = nodes.pop
#     if !node.left && !node.right
#       unless depths.include?(depth)
#         depths.push(depth)
#       end
#       if depths.length > 2 || depths.length == 2 && (depths[0] - depths[1]).abs > 1
#         return false
#       end
#     else
#       nodes << [node.left, depth + 1] if node.left
#       nodes << [node.right, depth + 1] if node.right
#     end
#   end
#   true
# end






# def balanced?(tree_root)
#   return true unless tree_root
#   depths = []
#   nodes = []
#   nodes << [tree_root, 0]
#   until nodes.empty?
#     node, depth = nodes.pop
#     if !node.left && !node.right
#       unless depths.include?(depth)
#         depths.push(depth)
#         if depths.length > 2 || depths.length == 2 && (depths[0] - depths[1]).abs > 1
#           return false
#         end
#       end
#     else
#       nodes << [node.left, depth + 1] if node.left
#       nodes << [node.right, depth + 1] if node.right
#     end
#   end
#   true
# end

















# A leaf node is a node with no children
# Find all the leaf nodes, and compare the depths. Make sure the difference is not greater than 1

# Depth first search is probably better because we want to go straight for the leaf nodes. If we can find two leaf nodes that are greater than 1 depth apart, we can finish early. (Whereas Breadth first search is going to get to the leafs last, so there will be less liklihood of being able to finish early.)

# def balanced?(tree_root)
#   nodes = []
#   depths = []
#   nodes << [tree_root, 0]
#   until nodes.empty?
#     current_node, current_depth = nodes.pop
#     if current_node.left.nil? && current_node.right.nil?
#       if !depths.include?(current_depth)
#         depths << current_depth
#         return false if depths.length > 2
#         if depths.length > 1
#           return false if (depths[0] - depths[1]).abs > 1
#         end
#       end
#     end
#     nodes << [current_node.left, current_depth + 1] if current_node.left
#     nodes << [current_node.right, current_depth + 1] if current_node.right
#   end
#   true
# end






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
#   left = root.insert_left(40)
#   right = root.insert_right(60)
#   left_left = left.insert_left(30)
#   left_right = left.insert_right(45)
#   right_left = right.insert_left(55)
#   right_right = right.insert_right(65)
#   assert_true(root)

#   root = BinaryTreeNode.new(50)
#   left = root.insert_left(40)
#   right = root.insert_right(60)
#   left_left = left.insert_left(30)
#   left_left_left = left_left.insert_left(20)
#   assert_false(root)
# end

# def assert_true(value)
#   p balanced?(value) ? "PASS" : "FAIL"
# end

# def assert_false(value)
#   p balanced?(value) ? "FAIL" : "PASS"
# end

# run_tests

# Interview Cake Tests
def run_tests
  desc = 'full tree'
  tree = BinaryTreeNode.new(5)
  left = tree.insert_left(8)
  right = tree.insert_right(6)
  left.insert_left(1)
  left.insert_right(2)
  right.insert_left(3)
  right.insert_right(4)
  result = balanced?(tree)
  assert_true(result, desc)

  desc = 'both leaves at the same depth'
  tree = BinaryTreeNode.new(3)
  left = tree.insert_left(4)
  right = tree.insert_right(2)
  left.insert_left(1)
  right.insert_right(9)
  result = balanced?(tree)
  assert_true(result, desc)

  desc = 'leaf heights differ by one'
  tree = BinaryTreeNode.new(6)
  left = tree.insert_left(1)
  right = tree.insert_right(0)
  right.insert_right(7)
  result = balanced?(tree)
  assert_true(result, desc)

  desc = 'leaf heights differ by two'
  tree = BinaryTreeNode.new(6)
  left = tree.insert_left(1)
  right = tree.insert_right(0)
  right_right = right.insert_right(7)
  right_right.insert_right(8)
  result = balanced?(tree)
  assert_false(result, desc)

  desc = 'three leaves total'
  tree = BinaryTreeNode.new(1)
  left = tree.insert_left(5)
  right = tree.insert_right(9)
  right.insert_left(8)
  right.insert_right(5)
  result = balanced?(tree)
  assert_true(result, desc)

  desc = 'both subtrees superbalanced'
  tree = BinaryTreeNode.new(1)
  left = tree.insert_left(5)
  right = tree.insert_right(9)
  right_left = right.insert_left(8)
  right.insert_right(5)
  right_left.insert_left(7)
  result = balanced?(tree)
  assert_false(result, desc)

  desc = 'both subtrees superbalanced two'
  tree = BinaryTreeNode.new(1)
  left = tree.insert_left(2)
  right = tree.insert_right(4)
  left.insert_left(3)
  left_right = left.insert_right(7)
  left_right.insert_right(8)
  right_right = right.insert_right(5)
  right_right_right = right_right.insert_right(6)
  right_right_right.insert_right(9)
  result = balanced?(tree)
  assert_false(result, desc)

  desc = 'three leaves at different levels'
  tree = BinaryTreeNode.new(1)
  left = tree.insert_left(2)
  left_left = left.insert_left(3)
  left.insert_right(4)
  left_left.insert_left(5)
  left_left.insert_right(6)
  right = tree.insert_right(7)
  right_right = right.insert_right(8)
  right_right_right = right_right.insert_right(9)
  right_right_right.insert_right(10)
  result = balanced?(tree)
  assert_false(result, desc)

  desc = 'only one node'
  tree = BinaryTreeNode.new(1)
  result = balanced?(tree)
  assert_true(result, desc)

  desc = 'linked list tree'
  tree = BinaryTreeNode.new(1)
  right = tree.insert_right(2)
  right_right = right.insert_right(3)
  right_right.insert_right(4)
  result = balanced?(tree)
  assert_true(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests