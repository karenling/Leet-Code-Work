# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
  return nil
end


a = ListNode.new(0)
b = ListNode.new(0)
c = ListNode.new(0)
# d = ListNode.new(4)
a.next = b
b.next = c
# c.next = d
delete_node(b)
p a

# a = ListNode.new(1)
# b = ListNode.new(2)
# c = ListNode.new(3)
# d = ListNode.new(4)
# a.next = b
# b.next = c
# c.next = d
#  delete_node(c)
#  p a
