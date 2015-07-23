# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return [] if head.next.nil?
  seen = {}
  node = head
  i = 0
  until node.nil?
    seen[i] = node
    node = node.next
    i+=1
  end

  if (seen.length - (n+1)) < 0
    head = seen[1]
  else
    seen[seen.length - (n+1)].next = seen[seen.length - (n - 1)]
  end
  head
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(4)
e = ListNode.new(5)
a.next = b
b.next = c
c.next = d
d.next = e
p remove_nth_from_end(a, 2)


a = ListNode.new(1)
b = ListNode.new(2)
a.next = b
p remove_nth_from_end(a, 1)


a = ListNode.new(1)
b = ListNode.new(2)
a.next = b
p remove_nth_from_end(a, 2)
