# https://atcoder.jp/contests/abc131/tasks/abc131_d



N = gets.to_i
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
