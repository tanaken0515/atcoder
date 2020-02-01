# https://atcoder.jp/contests/language-test-202001/tasks/abc083_b



N, A, B = gets.split.map(&:to_i)

ans = 0
1.upto(N) do |i|
  sum = i.to_s.chars.sum { |char| char.to_i }
  ans += i if sum >= A && sum <= B
end

puts ans
