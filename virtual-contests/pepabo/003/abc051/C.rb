# https://atcoder.jp/contests/abc051/tasks/abc051_c

def course(from_x, from_y, to_x, to_y, short)
  dx = to_x - from_x
  dy = to_y - from_y

  x_char = dx > 0 ? 'R' : 'L'
  y_char = dy > 0 ? 'U' : 'D'

  if short
    y_char * dy.abs + x_char * dx.abs
  else
    opposite_x_char = dx > 0 ? 'L' : 'R'
    opposite_y_char = dy > 0 ? 'D' : 'U'

    opposite_y_char + x_char * (dx.abs + 1) + y_char * (dy.abs + 1) + opposite_x_char
  end
end

sx, sy, tx, ty = gets.split.map(&:to_i)

puts course(sx, sy, tx, ty, true) + course(tx, ty, sx, sy, true) + course(sx, sy, tx, ty, false) + course(tx, ty, sx, sy, false)
