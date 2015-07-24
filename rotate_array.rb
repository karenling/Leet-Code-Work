# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  original_positions = (0...nums.length).to_a
  values = {}

  nums.each_with_index do |el, idx|
    values[(idx + k) % nums.length] = el
  end

  nums.length.times do |i|
    nums[i] = values[i]
  end

  return nil
end

a = [1,2,3,4,5,6,7]
rotate(a, 3) #[5,6,7,1,2,3,4]
p a


b = [1]
rotate(b, 1) # [1]
p b
