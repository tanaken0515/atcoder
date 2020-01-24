# https://atcoder.jp/contests/abc066/tasks/abc066_b



s = gets.chomp

(1..(s.length / 2)).each do |i|
  t = s[0...(s.length - 2 * i)]

  x = t[0...(t.length / 2)]
  y = t[(t.length / 2)...(t.length)]
  if x == y
    puts t.length
    exit
  end
end
