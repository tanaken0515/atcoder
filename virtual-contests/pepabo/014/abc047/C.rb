# https://atcoder.jp/contests/abc047/tasks/arc063_a



S = gets.chomp

ans = 0
before_char = S[0]
S.chars.each do |char|
  ans += 1 if char != before_char
  before_char = char
end

puts ans
