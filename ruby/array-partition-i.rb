# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    return 0 unless nums
    nums.sort.each_slice(2).to_a.reduce(0) { |sum, num| sum += num.first }
end