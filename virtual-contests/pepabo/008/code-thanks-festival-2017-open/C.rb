# https://atcoder.jp/contests/code-thanks-festival-2017-open/tasks/code_thanks_festival_2017_c

class PriorityQueue
  def initialize(a_b_sets = [])
    @data = []
    a_b_sets.each{|a_b_set| add(a_b_set)}
  end

  def add(a_b_set)
    @data.push(a_b_set)
    bottom_up
  end

  def peek
    @data[0]
  end

  def poll
    if size == 0
      nil
    elsif size == 1
      @data.pop
    else
      min_a_b_set = @data[0]
      @data[0] = @data.pop # 末尾を先頭へ
      top_down # Queueを再構築
      min_a_b_set
    end
  end

  def size
    @data.size
  end

  private

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end


  def bottom_up
    idx = size - 1
    while has_parent?(idx)
      parent_idx = parent_idx(idx)
      if @data[parent_idx][0] > @data[idx][0]
        swap(parent_idx, idx)
        idx = parent_idx
      else
        return
      end
    end
  end

  def top_down
    idx = 0
    while has_child?(idx)
      a = left_child_idx(idx)
      b = right_child_idx(idx)
      if @data[b].nil?
        c = a
      else
        c = @data[a][0] <= @data[b][0] ? a : b
      end
      if @data[idx][0] > @data[c][0]
        swap(idx, c)
        idx = c
      else
        return
      end
    end
  end

  def parent_idx(idx)
    (idx - (idx.even? ? 2 : 1)) / 2
  end

  def left_child_idx(idx)
    (idx * 2) + 1
  end

  def right_child_idx(idx)
    (idx * 2) + 2
  end

  def has_child?(idx)
    ((idx * 2) + 1) < @data.size
  end

  def has_parent?(idx)
    idx > 0
  end
end

N, K = gets.split.map(&:to_i)
a_b_sets = Array.new(N)
N.times do |i|
  a_b_sets[i] = gets.split.map(&:to_i)
end

queue = PriorityQueue.new(a_b_sets)
ans = 0
K.times do
  a, b = queue.poll
  ans += a
  queue.add([a + b, b])
end

puts ans
