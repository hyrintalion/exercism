class Pangram
  @alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')

  def self.pangram?(phrase)
    @alphabet.all? { |letter| phrase.downcase.include?(letter) }
  end
end

module BookKeeping
  VERSION = 6
end
