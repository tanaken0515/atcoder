# https://atcoder.jp/contests/abc138/tasks/abc138_c

class PriorityQueue
  def initialize(values = [])
    @data = []
    values.each{|value| add(value)}
  end

  def add(value)
    @data.push(value)
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
      min = @data[0]
      @data[0] = @data.pop # 末尾を先頭へ
      top_down # Queueを再構築
      min
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
      if @data[parent_idx] > @data[idx]
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
        c = @data[a] <= @data[b] ? a : b
      end
      if @data[idx] > @data[c]
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


N = gets.to_i
vs = gets.split.map(&:to_i)

queue = PriorityQueue.new(vs)

while queue.size > 1
  ave = (queue.poll + queue.poll) / 2.0
  queue.add(ave)
end

puts queue.poll
