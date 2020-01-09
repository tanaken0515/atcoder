# https://atcoder.jp/contests/abc089/tasks/abc089_c



N = gets.to_i
Ss = Array.new(N) { gets.chomp }

march_count = Ss.each_with_object(Hash.new(0)) do |s, hash|
  hash[s[0]] += 1 if 'MARCH'.chars.include?(s[0])
end

ans = 0
if march_count.length > 2
  march_count.keys.combination(3) do |a, b, c|
    ans += march_count[a] * march_count[b] * march_count[c]
  end
end

puts ans
