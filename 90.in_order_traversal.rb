def in_order_traversal(tree_node)
  if node != nil
    in_order_traversal(tree_node.left)
    tree_node.value
    in_order_traversal(tree_node.right)
  end
end