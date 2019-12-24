blue_cards = []
red_cards = []
n = gets.chomp.to_i
n.times do
  blue_cards << gets.chomp
end
m = gets.chomp.to_i
m.times do
  red_cards << gets.chomp
end

blue_words = blue_cards.each_with_object(Hash.new(0)) {|s, hash| hash[s] += 1}
result = blue_words.map{|word, count| count - red_cards.count(word)}.max

print result > 0 ? result : 0
