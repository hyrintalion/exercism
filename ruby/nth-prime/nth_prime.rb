require 'prime'
class Prime
  def self.nth(number)
    raise ArgumentError if number == 0

    primes ||= [2, 3]
    candidate = primes.last

    while number > primes.length
      candidate += 2

      unless primes.any? { |prime| candidate % prime == 0 }
        primes.push(candidate)
      end
    end

    primes[number - 1]
  end
end

module BookKeeping
  VERSION = 1
end