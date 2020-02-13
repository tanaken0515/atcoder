# https://atcoder.jp/contests/code-thanks-festival-2017-open/tasks/code_thanks_festival_2017_c

def find_min_key_and_value(as, bs)
  min = 10 ** 9 + 1
  min_value_key = -1
  min_b = 10 ** 9 + 1
  as.each_with_index do |value, key|
    if value == min
      if bs[key] < min_b
        min_value_key = key
        min_b = bs[key]
      end
    end
    if value < min
      min = value
      min_value_key = key
      min_b = bs[key]
    end
  end

  [min, min_value_key]
end

N, K = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

min, key = find_min_key_and_value(as, bs)

k = 1
ans = min


puts ans
