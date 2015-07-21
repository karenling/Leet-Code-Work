# runtime 108ms
def majority_element(nums)
  counter = Hash.new(0)
  majority_num = nums.length / 2
  nums.each do |el|
    counter[el] += 1
    if counter[el] > majority_num
      return el
    end
  end
  majority_num = nums.length / 2
  majority = counter.select do |k, v|
    v > majority_num
  end

  majority.first.first
end


# runtime 144ms
def majority_element(nums)
  counter = Hash.new(0)
  majority_num = nums.length / 2
  nums.each do |el|
    counter[el] += 1
    if counter[el] > majority_num
      return el
    end
  end
end

p majority_element([1, 2, 3, 2, 2]) # 2
p majority_element([1, 4, 3, 5, 2]) # 0
