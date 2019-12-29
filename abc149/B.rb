# https://atcoder.jp/contests/abc149/tasks/abc149_b



A, B, K = gets.split.map(&:to_i)

if A > K
  puts "#{A - K} #{B}"
else
  B = (A + B - K > 0) ? A + B - K : 0
  puts "0 #{B}"
end
