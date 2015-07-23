def hamming_weight(n)
  total = 0

  until n == 0
    n, remainder = n.divmod(2)
    total += remainder
  end

  return total
end

p hamming_weight(11)
