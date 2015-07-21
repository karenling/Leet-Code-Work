# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  letters = {}
  i = 0
  while i < s.length

    if letters.has_key?(s[i])
      return false if letters[s[i]] != t[i]
    else
      return false if letters.values.include?(t[i])
      letters[s[i]] = t[i]
    end
    i += 1
  end
  p letters
  return true
end

p is_isomorphic('egg', 'add') #true
p is_isomorphic('foo', 'bar') #false
p is_isomorphic('paper', 'title') #true
p is_isomorphic('ab', 'aa') #false
