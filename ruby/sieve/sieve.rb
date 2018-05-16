class Sieve
  def initialize(number)
    @max = number
  end

  def primes
    nums = Array.new(@max + 1, 1)
    nums[0] = nums[1] = 0

    (2..@max**2).each do |sieve|
      next if nums[sieve] != 1
      (2 * sieve).step(@max, sieve).each do |num|
        nums[num] = 0
      end
    end

    (2..@max).select { |num| nums[num] == 1 }
  end
end

module BookKeeping
  VERSION = 1
end
