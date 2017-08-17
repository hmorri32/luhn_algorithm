require_relative 'credit_methods'

class CreditCheck
  include CreditMethods
  attr_reader :valid

  def initialize(cc_number)
    @cc_number = cc_number
    @valid     = false
  end

  def validate
    split        = splitter(@cc_number)
    as_ints      = integers(split)
    reversed     = reverse_it(as_ints)
    by_two       = every_other_times_two(reversed)
    sum_over_ten = add_over_ten(by_two)
    total        = add_all_digits(sum_over_ten)
    total % 10 == 0 ? @valid = true : @valid
  end
end