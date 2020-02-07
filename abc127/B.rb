# https://atcoder.jp/contests/abc127/tasks/abc127_b



r, D, x_2000 = gets.split.map(&:to_i)

x = x_2000
(1..10).each do
  x = r * x - D
  puts x
end
