# https://atcoder.jp/contests/abc077/tasks/arc084_a



N = gets.to_i
As = gets.split.map(&:to_i).sort!
Bs = gets.split.map(&:to_i)
Cs = gets.split.map(&:to_i).sort!

ans = Bs.inject(0) do |result, b|
  x = As.bsearch_index{ |a| a >= b } || N
  y = N - (Cs.bsearch_index{ |c| c > b } || N)
  result + x * y
end

puts ans
