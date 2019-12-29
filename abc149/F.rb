# https://atcoder.jp/contests/abc149/tasks/abc149_f

MOD = 10

N = gets.to_i
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
