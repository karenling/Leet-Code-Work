# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end

    # def inspect
    #   return if @left.nil? || @right.nil?
    #   [@val, @left.val, @right.val]
    # end
end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return if root.nil?
  working_nodes = [root]

  until working_nodes.empty?
    node = working_nodes.shift
    node.left, node.right = node.right, node.left

    working_nodes << node.left if node.left
    working_nodes << node.right if node.right
  end

  root
end

a = TreeNode.new(4)
b = TreeNode.new(2)
c = TreeNode.new(7)
d = TreeNode.new(1)
e = TreeNode.new(3)
f = TreeNode.new(6)
g = TreeNode.new(9)
a.left = b
a.right = c
b.left = d
b.right = e
c.left = f
c.right = g

# p a
# p b
# p c
# p d
# p e
# p f
# p g
#
# invert_tree(a)
# p a
# p b
# p c
# p d
# p e
# p f
# p g

p invert_tree(a)

# p a
