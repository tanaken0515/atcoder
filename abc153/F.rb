# https://atcoder.jp/contests/abc153/tasks/abc153_f



N, D, A = gets.split.map(&:to_i)
Xs = Array.new(N)
Hs = Array.new(N)
N.times do |i|
  Xs[i], Hs[i] = gets.split.map(&:to_i)
end

puts ans
