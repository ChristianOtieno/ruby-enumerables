module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    while i < self.size
      yield(self[i], i)
      i += 1
    end
  end

  def my_select
    i = 0
    arr = []
    while i < self.size
      if yield(self[i])
        arr << self[i]
      end
      i += 1
    end
    arr
  end

  def my_all?
    
  end

  def my_any?
    
  end

  def my_none?
    
  end

  def my_count
    
  end

  def my_map
    
  end

  def my_inject

  end

  def get_inject_and_sym
    
  end

  def multiply_els
    
  end

  def check_validity
    
  end
end