def is_power_of_two(n)
  # return false if n <= 0
  # return true if n == 1
  # remainder = nil
  # until n == 1
  #   remainder = n % 2
  #   return false if remainder != 0
  #   n = n / 2
  # end
  #
  # return true

  return false if n <= 0
  return true if n == 1

  i = 1
  num = 2
  until num >= n
    num = 2**i
    i+=1
    p num
  end

  num == n ? true : false
end

p is_power_of_two(5)
# 5/2 = 2 r 1;
p is_power_of_two(4)
p is_power_of_two(3)


# 3/2 = 1 r 1
# 4/2 = 2 r 0 => 2/2 = 1


# 16/2 = 8 r 0, 8/2 r 0,
#17/2 = 8 r 1
