# https://atcoder.jp/contests/abs/tasks/abc086_a



a, b = gets.split.map(&:to_i)

puts (a * b).odd? ? 'Odd' : 'Even'
