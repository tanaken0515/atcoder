# https://atcoder.jp/contests/abc067/tasks/abc067_a



A, B = gets.split.map(&:to_i)

puts A % 3 == 0 || B % 3 == 0 || (A + B) % 3 == 0 ? 'Possible' : 'Impossible'
