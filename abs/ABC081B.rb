# https://atcoder.jp/contests/abs/tasks/abc081_b



N = gets.to_i
As = gets.split.map(&:to_i)

puts As.map { |a| a.to_s(2).reverse.index('1') }.min
