class Squares
  def initialize(number)
    @number = (1..number)
  end

  def square_of_sum
    sum = 0
    @number.each do |iterator|
      sum += iterator
    end
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    @number.each do |iterator|
      sum += iterator * iterator
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end