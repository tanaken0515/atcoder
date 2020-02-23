# https://atcoder.jp/contests/abc137/tasks/abc137_c



N = gets.to_i
counts = Hash.new(0)
ans = 0
N.times do
  s = gets.chomp.chars.sort.join
  ans += counts[s]
  counts[s] += 1
end

puts ans
