# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d



N = gets.to_i
S = gets.chomp

ans = 0
(0..999).each do |x|
  code = sprintf("%03d", x)

  p0 = S.index(code[0])
  next if p0.nil?

  p1 = S[(p0 + 1)..(S.length - 1)].index(code[1])
  next if p1.nil?

  p2 = S[(p0 + p1 + 2)..(S.length - 1)].index(code[2])
  next if p2.nil?

  ans += 1
end
puts ans
