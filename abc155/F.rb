# https://atcoder.jp/contests/abc155/tasks/abc155_f



N, M = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end
Ls = Array.new(M)
Rs = Array.new(M)
M.times do |i|
  Ls[i], Rs[i] = gets.split.map(&:to_i)
end

puts ans
