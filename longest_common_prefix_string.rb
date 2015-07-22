# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?
  i = 0
  common = ""
  while i < strs.min.length
    working = strs[0][i]
    same = strs.all? do |str|
      str[i] == working
    end

    common += working if same
    break if !same
    i += 1
  end

  return common
end

# p longest_common_prefix([])

p longest_common_prefix(["aca","cba"])
# p longest_common_prefix(['beejfekwa', 'beekeke', 'beefjeje', 'bee'])
