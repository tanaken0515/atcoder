# https://atcoder.jp/contests/abc081/tasks/arc086_a



N, K = gets.split.map(&:to_i)
As = gets.chomp.split

num_counts = As.each_with_object(Hash.new(0)) { |s, hash| hash[s] += 1 }

diff = num_counts.size - K
if diff <= 0
  puts 0
  exit
end

ans = 0
num_counts.sort { |a, b| a[1] <=> b[1] }.each do |num, count|
  if diff <= 0
    break
  end
  ans += count
  diff -= 1
end

puts ans
