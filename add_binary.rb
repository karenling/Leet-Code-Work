# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    return "0" if a == "0" && b == "0"

    a = a.split("").map(&:to_i)
    a_total = 0
    a_len = a.length - 1
    a.each do |el|
      a_total += el * 2**a_len
      a_len -= 1
    end

    b = b.split("").map(&:to_i)
    b_total = 0
    b_len = b.length - 1
    b.each do |el|
      b_total += el * 2**b_len
      b_len -= 1
    end

    total = a_total + b_total

    result = []

    until total == 0
      result << total % 2
      total = total / 2
    end

    result.reverse.join("")
end

p add_binary("0", "0") # 100
# p add_binary("11", "1") # 100
