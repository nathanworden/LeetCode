class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
        @stack = []
    end

    attr_accessor :stack

=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        stack.push(x)
    end


=begin
    :rtype: Void
=end
    def pop()
        stack.shift
    end


=begin
    :rtype: Integer
=end
    def top()
        stack[0]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        stack.min
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()


["MinStack","push","push","push","getMin","pop","top","getMin"]
[[],[-2],[0],[-3],[],[],[],[]]


