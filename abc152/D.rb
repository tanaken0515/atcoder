# https://atcoder.jp/contests/abc152/tasks/abc152_d


N = gets.to_i

counts = Array.new(10) { Array.new(10) { 0 } }

('1'.."#{N}").each do |s|
  f = s[0].to_i
  l = s[-1].to_i
  counts[f][l] += 1
end

ans = 0
(0..9).each do |i|
  (0..9).each do |j|
    ans += counts[i][j] * counts[j][i]
  end
end

puts ans
