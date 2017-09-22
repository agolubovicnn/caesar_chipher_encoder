class Caesar

  attr_accessor :offset, :string

  def initialize(rotation, string)
    @rotation = rotation
    @string = string
  end

  def caesar_cipher
    encript = ""
    alphabet = ('a'..'z').to_a

    @string.each_codepoint do |letter|
      if letter >= 'a'.ord && letter <= 'z'.ord
        encript << 'a'.ord + (letter - 'a'.ord + @rotation) % alphabet.length
      elsif letter >= 'A'.ord && letter <= 'Z'.ord
        encript << 'A'.ord + (letter - 'A'.ord + @rotation) % alphabet.length
      else
        encript << letter
      end

    end
    return encript
  end
end

cesar = Caesar.new(13, "The quick brown fox jumps over the lazy dog")
puts cesar.caesar_cipher
