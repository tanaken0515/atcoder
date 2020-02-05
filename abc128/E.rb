# https://atcoder.jp/contests/abc128/tasks/abc128_e



N, Q = gets.split.map(&:to_i)
Ss = Array.new(N)
Ts = Array.new(N)
Xs = Array.new(N)
N.times do |i|
  Ss[i], Ts[i], Xs[i] = gets.split.map(&:to_i)
end
Ds = Array.new(Q) { gets.to_i }

puts ans
