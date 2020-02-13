# https://atcoder.jp/contests/abc054/tasks/abc054_a



A, B = gets.split.map(&:to_i)

ans = if A == B
        'Draw'
      elsif A > B
        B == 1 ? 'Bob' : 'Alice'
      else
        A == 1 ? 'Alice' : 'Bob'
      end

puts ans
