# https://atcoder.jp/contests/abc156/tasks/abc156_f

MOD = z

k, q = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)
ns = Array.new(q)
xs = Array.new(q)
ms = Array.new(q)
q.times do |i|
  ns[i], xs[i], ms[i] = gets.split.map(&:to_i)
end

puts ans
