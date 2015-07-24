# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  # negative nums are not palindromes
  return false if x < 0

  div = 1
  while x / div >= 10
    div *= 10
  end
  p div
  while x != 0
    left = x / div
    right = x % 10

    if (left != right)
      return false
    end
    x = (x % div) / 10
    div /= 100
  end

  return true
end

p is_palindrome(121) #t
p is_palindrome(132) #f
p is_palindrome(1001) #t
