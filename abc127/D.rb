# https://atcoder.jp/contests/abc127/tasks/abc127_d



N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = Array.new(M)
Cs = Array.new(M)
M.times do |i|
  Bs[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
