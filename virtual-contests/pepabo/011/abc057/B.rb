# https://atcoder.jp/contests/abc057/tasks/abc057_b



N, M = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
cs = Array.new(M)
ds = Array.new(M)
M.times do |i|
  cs[i], ds[i] = gets.split.map(&:to_i)
end

ans = []

N.times do |i|
  d = 4 * (10 ** 8)
  checkpoint = 0
  M.times do |j|
    temp = (as[i] - cs[j]).abs + (bs[i] - ds[j]).abs
    if temp < d
      d = temp
      checkpoint = j + 1
    end
  end
  ans << checkpoint
end
puts ans
