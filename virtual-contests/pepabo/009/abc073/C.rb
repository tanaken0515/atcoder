# https://atcoder.jp/contests/abc073/tasks/abc073_c



N = gets.to_i
hash = Hash.new(0)
N.times do
  hash[gets.to_i] += 1
end

puts hash.values.select { |count| count.odd? }.count
