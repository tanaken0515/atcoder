# https://atcoder.jp/contests/abc151/tasks/abc151_c



N, M = gets.split.map(&:to_i)
hash = Hash.new { |h, key| h[key] = [] }
M.times do
  p, s = gets.split
  hash[p] << s
end

pass = 0
penalty = 0
hash.each do |q, answers|
  q_penalty = answers.index('AC')
  if q_penalty
    pass += 1
    penalty += q_penalty
  end
end
puts "#{pass} #{penalty}"
