# A binary search tree is a binary tree where the nodes are ordered in a specific way. For every node:

# The nodes to the left are smaller than the current node.
# The nodes to the right are larger than the current node.

# A balanced binary search tree will:
# take up O(n) space
# take O(log n) to insert
# take O(log n) to lookup
# take O(log n) to delete

# An unbalanced binary search tree in the worst case will:
# take up O(n) space
# take O(n) to insert
# take O(n) to lookup
# take O(n) to delete

class BinaryTreeNode
  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end
end