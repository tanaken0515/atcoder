# https://atcoder.jp/contests/abc083/tasks/arc088_a



x, y = gets.split.map(&:to_i)

ans = 0
while x <= y
  ans += 1
  x *= 2
end

puts ans
