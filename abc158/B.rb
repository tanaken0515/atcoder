# https://atcoder.jp/contests/abc158/tasks/abc158_b



N, A, B = gets.split.map(&:to_i)

x = N / (A + B)
ans = A * x
y = N % (A + B)
ans += [A, y].min
puts ans
