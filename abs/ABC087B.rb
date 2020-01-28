# https://atcoder.jp/contests/abs/tasks/abc087_b



A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

ans = 0
y500 = [X / 500, A].min
(0..y500).each do |a|
  y100 = [(X - 500 * a) / 100, B].min
  (0..y100).each do |b|
    if (X - 500 * a - 100 * b) / 50 <= C
      ans += 1
    end
  end
end

puts ans
