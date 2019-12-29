x = gets.to_i.abs
sum = 0
result = 0

x.times do |i|
  sum += i
  if x <= sum + i + 1
    result = i + 1
    break
  end
end

puts result
