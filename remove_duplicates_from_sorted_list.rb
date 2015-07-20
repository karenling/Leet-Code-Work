# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

require 'set'
def delete_duplicates(head)

  return if head.nil?
  current_vals = Set.new
  current_vals << head.val
  until head.next.nil?
    head = head.next
    current_vals << head.val
  end


  working_head = ListNode.new(current_vals.first)
  pointer = working_head
  current_vals.each_with_index do |el, idx|
    next if idx == 0
    next_head = ListNode.new(el)
    working_head.next = next_head
    working_head = next_head
  end

  return pointer
end

h = ListNode.new(3)
i = ListNode.new(4)
h.next = i
j = ListNode.new(5)
i.next = j
p delete_duplicates(h)
