module CreditMethods
  def splitter(string)
    string.split("")
  end

  def integers(arr)
    arr.map(&:to_i)
  end

  def reverse_it(arr)
    arr.reverse
  end

  def every_other_times_two(arr)
    arr.map.with_index { |num, i| i.odd? ? num * 2 : num }
  end

  def add_over_ten(arr)
    arr.map { |num| num >= 10 ? num - 9  : num }
  end

  def add_all_digits(arr)
    arr.reduce(:+)
  end
end
