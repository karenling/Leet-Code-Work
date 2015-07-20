class Queue # FIFO
    def initialize
      @in, @out = [], []
    end

    def push(x)
      @in << x
      return nil
    end

    def pop
      self.flip! if @out.empty?
      @out.pop
      return nil
    end

    def peek
      self.flip! if @out.empty?
      @out[@out.length-1]
    end

    def empty
      (@in.empty? && @out.empty?) ? true : false
    end

    def flip!
      @in.length.times do
        @out << @in.pop
      end
    end
end

q = Queue.new
q.push(3)
q.push(4)
q.pop
q.push(5)
p q.peek
p q.empty
p q
