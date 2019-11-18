# frozen_string_literal: true

module Enumerable
  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    while i < size
      yield(self[i], i)
      i += 1
    end
  end

  def my_select
    i = 0
    arr = []
    while i < size
      arr << self[i] if yield(self[i])
      i += 1
    end
    arr
  end

  def my_all?
    x = true
    my_each { |e| x = false unless yield(e) }
    x
  end

  def my_any?
    x = false
    my_each { |e| x = true if yield(e) }
    x
  end

  def my_none?
    x = true
    my_each { |e| x = false if yield(e) }
    x
  end

  def my_count
    total = 0
    my_each { total += 1 }
    total
  end

  def my_map
    (my_map_proc = nil)
    x = []
    if my_map_proc.nil?
      my_each { |e| x << yield(e) }
    else
      my_each { |e| x << (my_map_proc.call e) }
    end
    x
  end

  def my_inject(val)
    my_each { |e| val = yield(val, e) }
    val
  end

  def multiply_els(array)
    array.my_inject(1) { |x, y| x * y }
  end
end
