def contains_nearby_duplicate(nums, k)
  numbers = Hash.new

  nums.each_with_index do |num, idx|
    if numbers.has_key?(num) && (idx - numbers[num] <= k)
      return true
    else
      numbers[num] = idx
    end
  end

  return false
end

p contains_nearby_duplicate([1, 2, 3, 2], 2)
p contains_nearby_duplicate([1, 2, 3, 4], 2)
