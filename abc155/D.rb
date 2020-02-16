# https://atcoder.jp/contests/abc155/tasks/abc155_d



N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

over_zero_index = As.bsearch_index { |x| x >= 0 }
minus_nums = As[0...over_zero_index]
over_zero_nums = As[over_zero_index..-1]

if minus_nums.count * over_zero_nums.count >= K
  arr = []
  minus_nums.each do |minus_num|
    over_zero_nums.each do |over_zero_num|
      arr << minus_num * over_zero_nums
    end
  end
  puts arr.sort[K - 1]
  exit
end

k = K - minus_nums.count * over_zero_nums.count
arr = []
nums = (over_zero_nums + minus_nums.map { |minus_num| -1 * minus_num }).sort

0.upto(nums.count - 1) do |i|

end

# puts ans
