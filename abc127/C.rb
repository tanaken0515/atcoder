# https://atcoder.jp/contests/abc127/tasks/abc127_c



N, M = gets.split.map(&:to_i)
Ls = Array.new(M)
Rs = Array.new(M)
M.times do |i|
  Ls[i], Rs[i] = gets.split.map(&:to_i)
end

puts ans
