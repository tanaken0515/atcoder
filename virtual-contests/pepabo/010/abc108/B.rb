# https://atcoder.jp/contests/abc108/tasks/abc108_b



x_1, y_1, x_2, y_2 = gets.split.map(&:to_i)

diff_x = x_2 - x_1
diff_y = y_2 - y_1

# if diff_y == 0
#   puts [x_2, y_2 + diff_x, x_1, y_1 + diff_x].join(' ')
#   exit
# end

x_3 = x_2 + (-1) * diff_y
y_3 = y_2 + diff_x
x_4 = x_1 + (-1) * diff_y
y_4 = y_1 + diff_x

puts [x_3, y_3, x_4, y_4].join(' ')
