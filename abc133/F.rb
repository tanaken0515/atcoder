# https://atcoder.jp/contests/abc133/tasks/abc133_f



N, Q = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
cs = Array.new(N)
ds = Array.new(N)
N.times do |i|
  as[i], bs[i], cs[i], ds[i] = gets.split.map(&:to_i)
end
xs = Array.new(Q)
ys = Array.new(Q)
us = Array.new(Q)
vs = Array.new(Q)
Q.times do |i|
  xs[i], ys[i], us[i], vs[i] = gets.split.map(&:to_i)
end

puts ans
