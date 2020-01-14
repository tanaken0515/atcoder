# https://atcoder.jp/contests/abc082/tasks/arc087_a



N = gets.to_i
as = gets.split.map(&:to_i)

num_counts = as.each_with_object(Hash.new(0)) { |s, hash| hash[s] += 1 }

ans = 0
num_counts.each do |num, count|
  ans += num > count ? count : count - num
end

puts ans
