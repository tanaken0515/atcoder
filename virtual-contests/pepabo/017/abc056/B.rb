# https://atcoder.jp/contests/abc056/tasks/abc056_b



W, a, b = gets.split.map(&:to_i)

puts a < b ? [b - (a + W), 0].max : [a - (b + W), 0].max
