# @param {Integer} x
# @return {Integer}
# 92ms runtime
def rev(n)
  reversed = []
  until n == 0
    reversed << n % 10
    n = n / 10
  end
  reversed.join("").to_i
end

p rev(234)

def reverse(x)
  val = nil
  if x < 0
    x *= -1
    val = rev(x) * -1
  else
    val = rev(x)
  end

  (val > 2147483648 || val < -2147483648) ? 0 : val
end

p reverse(123) # 123
p reverse(-321) # -123
p reverse(1534236469) #0
p reverse(-2147483648) #0
p reverse(1563847412) #0
