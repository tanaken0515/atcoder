# https://atcoder.jp/contests/abc152/tasks/abc152_b



a, b = gets.split.map(&:to_i)

puts a < b ? a.to_s * b : b.to_s * a
