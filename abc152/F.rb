# https://atcoder.jp/contests/abc152/tasks/abc152_f



N = gets.to_i
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
M = gets.to_i
us = Array.new(M)
vs = Array.new(M)
M.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end

puts ans
