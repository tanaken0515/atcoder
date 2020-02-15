# https://atcoder.jp/contests/abc133/tasks/abc133_e

MOD = 1_000_000_007

N, K = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
