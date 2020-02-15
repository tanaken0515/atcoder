# https://atcoder.jp/contests/abc134/tasks/abc134_c



N = gets.to_i
As = Array.new(N) { gets.to_i }

second_largest, first_largest = As.sort.last(2)

puts As.map { |a| a == first_largest ? second_largest : first_largest }
