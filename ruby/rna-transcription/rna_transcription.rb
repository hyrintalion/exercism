class Complement
  @transcription = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
  }

  def self.of_dna(dna)
    return '' if dna.split('').any? { |nucleotide| !@transcription.include?(nucleotide)}
    dna.split('').map do |nucleotide|
      @transcription[nucleotide]
    end.join('')
  end
end

module BookKeeping
  VERSION = 4
end
