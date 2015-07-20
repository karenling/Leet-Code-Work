# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return if head.nil?
  last = ListNode.new(head.val)
  working = nil
  until head.next.nil?
    working = ListNode.new(head.next.val)
    working.next = last
    last = working
    head.next = head.next.next
  end

  working
end

a = ListNode.new(1)
# b = ListNode.new(2)
# c = ListNode.new(3)
# d = ListNode.new(4)
# a.next = b
# b.next = c
# c.next = d

p reverse_list(a)
