# https://atcoder.jp/contests/abc090/tasks/arc091_a



N, M = gets.split.map(&:to_i)

ans = if N == 1 && M == 1
        1
      elsif N == 1 || M == 1
        [N, M].max - 2
      else
        [N - 2, 0].max * [M - 2, 0].max
      end
puts ans
