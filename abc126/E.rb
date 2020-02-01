# https://atcoder.jp/contests/abc126/tasks/abc126_e



N, M = gets.split.map(&:to_i)
Xs = Array.new(M)
Ys = Array.new(M)
Zs = Array.new(M)
M.times do |i|
  Xs[i], Ys[i], Zs[i] = gets.split.map(&:to_i)
end

puts ans
