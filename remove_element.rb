# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  counter = 0
  nums.each_with_index do |num, idx|
    if num == val
      nums[idx] = nil
    else
      counter += 1
    end
  end
  nums.delete(nil)
  counter
end

p remove_element([4, 5], 4)
p remove_element([2, 3, 4, 2], 2)
