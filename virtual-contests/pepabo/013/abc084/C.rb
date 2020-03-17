# https://atcoder.jp/contests/abc084/tasks/abc084_c

MOD = B

N = gets.to_i
Cs = Array.new(N)
Ss = Array.new(N)
Fs = Array.new(N)
N.times do |i|
  Cs[i], Ss[i], Fs[i] = gets.split.map(&:to_i)
end

puts ans
