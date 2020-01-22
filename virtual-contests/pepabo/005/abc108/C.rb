# https://atcoder.jp/contests/abc108/tasks/arc102_a



N, K = gets.split.map(&:to_i)

pairs = []
m = 1
while m * K <= 2 * N
  x = 1
  while x < m * K && x <= N
    y = m * K - x
    pairs << [x, y] if y <= N
    x += 1
  end
  m += 1
end

ans = 0
pairs.each do |pair1|
  pairs.each do |pair2|
    ans += 1 if pair1[1] == pair2[0] && (pair1[0] + pair2[1]) % K == 0
  end
end

puts ans
