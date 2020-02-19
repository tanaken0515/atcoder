# https://atcoder.jp/contests/abc093/tasks/arc094_a



a, b, c = gets.split.map(&:to_i).sort

ans = 0

ans += (c - b) / 2
if (c - b).even?
  b = c
else
  ans += 1
  b = c
  a += 1
end

ans += (c - a) / 2
if (c - a).odd?
  ans += 2
end

puts ans
