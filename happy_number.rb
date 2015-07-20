# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  numbers = []
  while true

    return false if numbers.include?(n)
    numbers << n

    split_numbers = n.to_s.split("").map!(&:to_i)
    n = 0
    split_numbers.each do |el|
      n += el**2
    end

    return true if n.to_s.gsub('0', '') == '1'
  end
end

p is_happy(1563712132) #true
p is_happy(19) #true
p is_happy(2) #false
#
# 7**2 = 49
# 4**2 + 9**2 = 16 + 81 = 97
# 130
