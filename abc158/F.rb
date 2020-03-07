# https://atcoder.jp/contests/abc158/tasks/abc158_f

MOD = 998244353

N = gets.to_i
Xs = Array.new(N)
Ds = Array.new(N)
N.times do |i|
  Xs[i], Ds[i] = gets.split.map(&:to_i)
end

puts ans
