# https://atcoder.jp/contests/abc130/tasks/abc130_f



N = gets.to_i
xs = Array.new(N)
ys = Array.new(N)
ds = Array.new(N)
N.times do |i|
  xs[i], ys[i], ds[i] = gets.split.map(&:to_i)
end

puts ans
