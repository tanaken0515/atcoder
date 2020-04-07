# https://atcoder.jp/contests/abc065/tasks/abc065_b



N = gets.to_i
as = []
N.times do |i|
  as[i + 1] = gets.to_i
end

next_switch = 1
passed = []
ans = 0

loop do
  passed << next_switch
  ans += 1
  next_switch = as[next_switch]
  if next_switch == 2
    puts ans
    exit
  end
  if passed.include?(next_switch)
    puts -1
    exit
  end
end
