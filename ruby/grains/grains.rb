class Grains

  def self.square(number)
    case number
    when 1
      1
    when 2..64
      2**(number-1)
    else
      raise ArgumentError
    end
  end

  def self.total
    2**64-1
  end

end


module BookKeeping
  VERSION = 1
end