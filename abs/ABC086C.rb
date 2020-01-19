# https://atcoder.jp/contests/abs/tasks/arc089_a



N = gets.to_i
ts = Array.new(N)
xs = Array.new(N)
ys = Array.new(N)
N.times do |i|
  ts[i], xs[i], ys[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
