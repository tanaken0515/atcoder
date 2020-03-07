# https://atcoder.jp/contests/abc158/tasks/abc158_e



N, P = gets.split.map(&:to_i)
S = gets.chomp

p_count = (S.to_i / P)
ans = 0
(0..p_count).each do |count|
  x = (P * count).to_s
  (0..(S.size - x.size)).each do |prefix_zero_count|
    s = '0' * prefix_zero_count + x
    remain = S.gsub(s, "")
    diff = S.size - remain.size
    if diff > 0
      ans += diff / s.size
    else
      break
    end
  end
end
puts ans
