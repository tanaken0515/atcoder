# https://atcoder.jp/contests/abc155/tasks/abc155_c



N = gets.to_i
Ss = Array.new(N) { gets.chomp }

string_counts = Hash.new(0)

count_strings = Hash.new {|hash, key| hash[key] = []}
Ss.each do |s|
  string_counts[s] += 1
  count_strings[string_counts[s]] << s
end

max_appear = string_counts.values.max
puts count_strings[max_appear].sort
