# https://atcoder.jp/contests/abs/tasks/abc088_b



N = gets.to_i
as = gets.split.map(&:to_i).sort.reverse

ans = 0
as.each_slice(2) do |alice, bob|
  ans += alice - bob.to_i
end
puts ans
