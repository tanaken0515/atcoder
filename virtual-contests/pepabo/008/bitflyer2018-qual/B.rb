# https://atcoder.jp/contests/bitflyer2018-qual/tasks/bitflyer2018_qual_b



A, B, N = gets.split.map(&:to_i)
X = gets.chomp

short_cake = A
cheese_cake = B

X.chars do |char|
  case char
  when 'S'
    short_cake -= 1 if short_cake > 0
  when 'C'
    cheese_cake -= 1 if cheese_cake > 0
  when 'E'
    if short_cake >= cheese_cake
      short_cake -= 1 if short_cake > 0
    else
      cheese_cake -= 1 if cheese_cake > 0
    end
  end
  break if short_cake == 0 && cheese_cake == 0
end

puts short_cake
puts cheese_cake
