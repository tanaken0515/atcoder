# https://atcoder.jp/contests/abc126/tasks/abc126_b

def month?(num)
  num > 0 && num < 13
end


S = gets.to_i

x = S / 100
y = S % 100

ans = if month?(x) && month?(y)
        'AMBIGUOUS'
      elsif month?(y)
        'YYMM'
      elsif month?(x)
        'MMYY'
      else
        'NA'
      end
puts ans
