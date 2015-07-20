# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)

  stringed_arr = []
  first = nums.first

  nums.each_with_index do |num, idx|
    if num + 1 != nums[idx + 1]
      if first == num
        stringed_arr << first.to_s
      else
        stringed_arr << "#{first}->#{num}"
      end
      first = nums[idx + 1]
    end
  end

  stringed_arr
end

p summary_ranges([-1])
p summary_ranges([0,1,2,4,5,7]) # return ["0->2","4->5","7"].


# def summary_ranges(nums)
#   split_arr = []
#   nums.each_with_index do |num, idx|
#     split_arr << num
#     split_arr << "," if num + 1 != nums[idx+1]
#   end
#
#   stringed_range = []
#
#   first = split_arr.first
#   split_arr.each_with_index do |val, idx|
#     if split_arr[idx + 1] == ","
#       if first == val
#         stringed_range << first.to_s
#       else
#         stringed_range << "#{first}->#{val}"
#       end
#       first = split_arr[idx + 2]
#     end
#   end
#
#   stringed_range
# end
