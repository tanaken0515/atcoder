# https://atcoder.jp/contests/abs/tasks/arc089_a

def movable?(diff_t, diff_x, diff_y)
  tmp = diff_t - diff_x.abs - diff_y.abs
  tmp >= 0 && tmp.even?
end

N = gets.to_i
ts = Array.new(N)
xs = Array.new(N)
ys = Array.new(N)
N.times do |i|
  ts[i], xs[i], ys[i] = gets.split.map(&:to_i)
end

prev_t, prev_x, prev_y = 0, 0, 0
N.times do |i|
  unless movable?(ts[i] - prev_t, xs[i] - prev_x, ys[i] - prev_y)
    puts 'No'
    exit
  end
end

puts 'Yes'
