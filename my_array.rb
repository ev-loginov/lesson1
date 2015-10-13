class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select { |number| number % 2 > 0 }
  end

  def multiple_to_three
    @array.select { |number| number % 3 == 0 }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.collect { |number| number / 10.to_f }
  end

  def chars
    chars = (:a..:z).to_a
    @array.map { |symbl| chars [symbl - 1] }
  end

  def switch
    max_n = @array.index(@array.max)
    min_n = @array.index(@array.min)
    max = @array.max
    min = @array.min
    @array[max_n] = min
    @array[min_n] = max
    @array
  end

  def before_min
    min = @array.index(@array.min)
    @array[0...min]
  end

  def three_smallest
    @array.sort.first(3)
  end
end
