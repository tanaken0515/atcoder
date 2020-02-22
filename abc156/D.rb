# https://atcoder.jp/contests/abc156/tasks/abc156_d

MOD = 10**9+7

n, a, b = gets.split.map(&:to_i)

if n == 2
  puts 0
  exit
end

sum = 2 ** n - 1

a = [a, n - a].min
b = [b, n - b].min

bunshi = bunbo = 1
a_pattern = b_pattern = nil
k = n / 2 + (n % 2)
0.upto(k) do |i|
  unless i == 0
    bunshi *= (n - i + 1)
    bunbo *= i
  end

  if i == a
    a_pattern = bunshi / bunbo
  end
  if i == b
    b_pattern = bunshi / bunbo
  end
  if a_pattern && b_pattern
    break
  end
end


puts (sum - a_pattern - b_pattern) % MOD
