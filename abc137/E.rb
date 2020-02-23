# https://atcoder.jp/contests/abc137/tasks/abc137_e



N, M, P = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
Cs = Array.new(M)
M.times do |i|
  As[i], Bs[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
