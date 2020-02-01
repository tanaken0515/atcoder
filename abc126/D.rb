# https://atcoder.jp/contests/abc126/tasks/abc126_d



N = gets.to_i
us = Array.new(N)
vs = Array.new(N)
ws = Array.new(N)
N.times do |i|
  us[i], vs[i], ws[i] = gets.split.map(&:to_i)
end

puts ans
