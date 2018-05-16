class Fixnum
  ROMAN_NUMBERS = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }.freeze

  def to_roman
    n = self.to_i
    roman = ''
    ROMAN_NUMBERS.each do |roman_letter, arabic|
      roman << roman_letter*(n / arabic)
      n = n % arabic
    end
    roman
  end
end

module BookKeeping
  VERSION = 2
end
