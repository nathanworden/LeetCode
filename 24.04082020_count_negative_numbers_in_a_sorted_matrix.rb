# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end


# arr = [1,2,3,4,5]
# output = arr.map.with_index do |num, index| 
#   node = ListNode.new(num)
#   node.next = ListNode.new(arr[index + 1])
#   node
# end


# p output

# @param {ListNode} head
# @return {ListNode}

def middle_node(head)
  node = [head]
  while node[-1].next != nil
    node.push(node[-1].next)
  end

  node[node.length / 2]
end

p middle_node(output[0])
# puts middle_node([1,2,3,4,5,6])