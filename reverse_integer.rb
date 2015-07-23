# @param {Integer} x
# @return {Integer}
def reverse(x)
  val = nil
  if x < 0
    x *= -1
    val = x.to_s.split("").reverse.join("").to_i * -1

  else
    val = x.to_s.split("").reverse.join("").to_i
  end
  
  if val > 2147483648 || val < -2147483648
    return 0
  else
    val
  end
end

p reverse(123) # 123
p reverse(-321) # -123
p reverse(1534236469) #0
p reverse(-2147483648) #0
p reverse(1563847412) #0
