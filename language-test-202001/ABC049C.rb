# https://atcoder.jp/contests/language-test-202001/tasks/arc065_a


class String
  def cut_tail!(tail)
    if self[(self.length - tail.length)...(self.length)] == tail
      self.replace(self[0...(self.length - tail.length)])
    end
  end
end

s = gets.chomp

cond = true
while s != ''
  unless s.cut_tail!('dream') || s.cut_tail!('dreamer') || s.cut_tail!('erase') || s.cut_tail!('eraser')
    cond = false
    break
  end
end

puts cond ? 'YES' : 'NO'
