# https://atcoder.jp/contests/abc136/tasks/abc136_c



N = gets.to_i
Hs = gets.split.map(&:to_i)

min_from_last = {}
idx = N - 1
min = Hs[idx]
Hs.reverse_each do |height|
  min = height if height < min
  min_from_last[idx] = min
  idx -= 1
end

Hs.each_with_index do |height, index|
  if min_from_last[index + 1] && height - min_from_last[index + 1] >= 2
    puts 'No'
    exit
  end
end

puts 'Yes'
