class MinStack
    # Initialize your data structure here
    def initialize
      @store = []
    end

    # @param {Integer} x
    # @return {Void} nothing
    def push(x)
      if @store.empty?
        @store << [x, x]
      else
        min_val = [self.get_min, x].min
        @store << [x, min_val]
      end

      return nil
    end

    # @return {Void} nothing
    def pop
      @store.pop
    end

    # @return {Integer}
    def top
      @store[-1][0]
    end

    # @return {Integer}
    def get_min
      @store[-1][1]
    end
end


stack = MinStack.new
stack.push(2)
stack.push(4)
stack.push(3)
stack.push(1)
stack.push(5)
stack.pop
stack.pop
p stack
p stack.get_min
p stack.top
