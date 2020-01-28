# https://atcoder.jp/contests/abc068/tasks/arc079_a



N, M = gets.split.map(&:to_i)

hash = Hash.new {|h, key| h[key] = []}
M.times do
  a, b = gets.split.map(&:to_i)
  hash[a] << b
  hash[b] << a
end

cond = false
hash[1].uniq.each do |via|
  cond = true if hash[via].include?(N)
end
puts cond ? 'POSSIBLE' : 'IMPOSSIBLE'
