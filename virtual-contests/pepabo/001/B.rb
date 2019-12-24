o = gets.chomp
e = gets.chomp

print o.chars.zip(e.chars).flatten.compact.inject{|a,b| a + b}
