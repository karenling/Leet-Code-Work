def two_sum(nums, target)
    seen = Hash.new
    index1 = 0
    index2 = 0

    nums.length.times do |i|
        if seen.has_key?(target - nums[i])
            index1 = seen[target - nums[i]]
            index2 = i + 1
        else
          seen[nums[i]] = i + 1
        end
    end

    return [index1, index2]
end
