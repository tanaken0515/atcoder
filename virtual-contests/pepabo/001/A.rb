sorted_nums = gets.chomp.split(" ").map(&:to_i).sort

print sorted_nums[0] + sorted_nums[1]
