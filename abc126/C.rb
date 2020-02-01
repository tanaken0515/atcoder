# https://atcoder.jp/contests/abc126/tasks/abc126_c


N, K = gets.split.map(&:to_i)

# サイコロで K 以上の場合 -> 勝ち
p1 = [(N - K + 1).to_f / N, 0.0].max

# サイコロで K 未満の場合
# (1..(K-1)) の数字が K を超えるまでに何回コインを振る必要があるか？という話
# 例えば x * (2 ** m) >= K としよう
p2 = 0.0
(1..([K - 1, N].min)).each do |x|
  l = K.to_s(2).length - x.to_s(2).length
  m = (x * (2 ** l) >= K) ? l : l + 1
  p2 += (1.0 / N) * (0.5 ** m)
end

puts p1 + p2
