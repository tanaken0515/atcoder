# https://atcoder.jp/contests/abc152/tasks/abc152_d


N = gets.to_i
N_STRING = N.to_s
KETA_N = N_STRING.length
FIRST = N_STRING[0]
LAST = N_STRING[KETA_N - 1]

def sandwiched_count(first, last)
  count = 0

  #p "first: #{first}, last: #{last}"
  # 一桁の数字をカウントする
  count += 1 if first == last

  return count if KETA_N == 1

  #p "KETA_N: #{KETA_N}"
  (2...KETA_N).each do |keta|
    if keta == 2
      count += 1
      next
    end

    count += 10 * (keta - 2)
  end

  #p "FIRST: #{FIRST}"
  if FIRST > first
    if KETA_N == 2
      count += 1
    end
    count += 10 * (KETA_N - 2)
  end

  if FIRST == first
    if LAST >= last
      if KETA_N == 2
        count += 1
      else
        count += (N_STRING[1..(KETA_N - 2)]).to_i + 1
      end
    end
  end

  count
end

ans = 0
(1..N).each do |x|
  next if x % 10 == 0

  a = x.to_s
  a_first = a[0]
  a_last = a[-1]

  #p '-' * 100
  #p "a: #{a}"
  ans += sandwiched_count(a_last, a_first)
  #p "ans: #{ans}"
end
puts ans
