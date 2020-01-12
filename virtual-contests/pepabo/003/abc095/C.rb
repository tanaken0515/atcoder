# https://atcoder.jp/contests/abc095/tasks/arc096_a



A, B, C, X, Y = gets.split.map(&:to_i)

if C * 2 > A + B
  puts A * X + B * Y
  exit
end

if C <= [A, B].min / 2
  puts C * [X, Y].max * 2
  exit
end

# C を"高い"ピザの必要な枚数を満たすように買う場合
c = A > B ? 2 * X : 2 * Y
cheaper_pizza_count = A > B ? Y : X
ans1 = C * c + [A, B].min * [cheaper_pizza_count - (c / 2), 0].max

# C を"安い"ピザの必要な枚数を満たすように買う場合
c = A > B ? 2 * Y : 2 * X
richer_pizza_count = A > B ? X : Y
ans2 = C * c + [A, B].max * [richer_pizza_count - (c / 2), 0].max

puts [ans1, ans2].min
