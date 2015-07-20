class Stack
    # FILO
    # Initialize your data structure here.
    def initialize
      @store = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
      @store << x
      return nil
    end

    # @return {void}
    def pop
      @store.pop
      return nil
    end

    # @return {Integer}
    def top
      @store[-1]
    end

    # @return {Boolean}
    def empty
      @store.empty? ? true : false
    end
end

stack = Stack.new
stack.push(4)
stack.push(5)
p stack.top
