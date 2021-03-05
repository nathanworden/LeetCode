# A binary tree is a tree where every node has two or fewer children.
# The children are usually caleld @left and @right

class BinaryTreeNode
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end


# In a completley full binary tree the number of total nodes on each level doubles as we move down the tree.

# The number of nodes on the last level is equal to the sum of the number of noeds on all other levels (plus 1). In other wods, about half of our nodes are on the last level.

# Let's  cal lthe number of nodes n, and the height of the tree h. h can also be thought of as the "number of levels."

# If we had h, how could we calculate n?

# Let's just add up the number of nodes on each level! How many nodes are there on each level?

# If we zero-index the levels, the number of nodes on the xth level is exactly 2^x

# The number of nodes on the last level is (1 more than) half of the total number of nodes, so we can just take the number ofnodes on the last leve, multiply it by 2, and subtract 1 to get the number of nodes overall. We know the number of nodes on the last level is 2^(h-1) 