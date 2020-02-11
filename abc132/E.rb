# https://atcoder.jp/contests/abc132/tasks/abc132_e



N, M = gets.split.map(&:to_i)
us = Array.new(M)
vs = Array.new(M)
M.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end
S, T = gets.split.map(&:to_i)

puts ans
