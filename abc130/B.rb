# https://atcoder.jp/contests/abc130/tasks/abc130_b



N, X = gets.split.map(&:to_i)
Ls = gets.split.map(&:to_i)

ans = 1
x = 0
Ls.each do |l|
  x += l
  break if x > X
  ans += 1
end
puts ans
