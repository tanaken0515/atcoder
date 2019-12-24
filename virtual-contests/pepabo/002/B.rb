chars = gets.chomp.chars
puts (('a'..'z').to_a - chars).first || 'None'