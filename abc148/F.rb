# https://atcoder.jp/contests/abc148/tasks/abc148_f



N, u, v = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
