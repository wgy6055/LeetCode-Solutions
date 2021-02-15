# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    result = 0
    current = 0
    nums.each do |num|
        if num == 1
            current += 1
        else
            result = [result, current].max
            current = 0
        end
    end
    result = [result, current].max
end

# @param {Integer[]} nums
# @return {Integer}
# def find_max_consecutive_ones(nums)
#     array = nums.join.split('0')
#     array.max ? array.max.size : 0
# end