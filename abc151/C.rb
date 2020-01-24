# https://atcoder.jp/contests/abc151/tasks/abc151_c



N, M = gets.split.map(&:to_i)
ps = Array.new(M)
Ss = Array.new(M)
M.times do |i|
  ps[i], Ss[i] = gets.split.map(&:to_i)
end

puts ans
