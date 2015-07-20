def contains_duplicate(nums)
  numbers = Hash.new

  nums.each do |num|
    if numbers.has_key?(num)
      return true
    else
      numbers[num] = true
    end
  end

  return false
end

p contains_duplicate([1, 2, 3])
p contains_duplicate([1, 2, 3, 3])
