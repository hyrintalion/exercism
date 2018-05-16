class Hamming
  def self.compute(one, two)
    raise ArgumentError if one.size != two.size
    return 0 if one.empty? || two.empty?

    counter = 0
    one.size.times do |iterator|
      counter += 1 if one[iterator] != two[iterator]
    end

    counter
  end
end

module BookKeeping
  VERSION = 3
end
