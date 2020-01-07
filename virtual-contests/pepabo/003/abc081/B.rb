# https://atcoder.jp/contests/abc081/tasks/abc081_b



N = gets.to_i
As = gets.split.map(&:to_i)

puts As.map{|num| num.to_s(2).reverse =~ /1/}.min
