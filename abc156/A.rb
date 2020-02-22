# https://atcoder.jp/contests/abc156/tasks/abc156_a



N, R = gets.split.map(&:to_i)

puts N >= 10 ? R : R + 100 * (10 - N)
