# https://atcoder.jp/contests/abc151/tasks/abc151_b



N, K, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

diff = [N * M - As.inject(:+), 0].max

puts diff <= K ? diff : -1
