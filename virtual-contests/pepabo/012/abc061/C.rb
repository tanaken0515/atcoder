# https://atcoder.jp/contests/abc061/tasks/abc061_c



N, K = gets.split.map(&:to_i)

hash = Hash.new(0)
N.times do |i|
  a, b = gets.split.map(&:to_i)
  hash[a] += b
end

count = 0
hash.sort.each do |a, b|
  count += b
  if count >= K
    puts a
    exit
  end
end
