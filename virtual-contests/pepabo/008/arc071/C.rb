# https://atcoder.jp/contests/arc071/tasks/arc071_a



n = gets.to_i
Ss = Array.new(n) do
  s = gets.chomp.chars
  s.each_with_object(Hash.new(0)) {|s, hash| hash[s] += 1}
end

ans = ''
('a'..'z').each do |char|
  min = 50
  Ss.each do |s|
    if s[char] && s[char] < min
      min = s[char]
    end
  end
  ans << char * min
end
puts ans
