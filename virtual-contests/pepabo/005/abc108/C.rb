# https://atcoder.jp/contests/abc108/tasks/arc102_a



N, K = gets.split.map(&:to_i)

x = N / K
y = if K.odd?
      0
    else
      x * K + K / 2 <= N ? x + 1 : x
    end

puts x ** 3 + y ** 3
