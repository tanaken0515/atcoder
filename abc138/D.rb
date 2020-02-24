# https://atcoder.jp/contests/abc138/tasks/abc138_d



N, Q = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
ps = Array.new(Q)
xs = Array.new(Q)
Q.times do |i|
  ps[i], xs[i] = gets.split.map(&:to_i)
end

puts ans
