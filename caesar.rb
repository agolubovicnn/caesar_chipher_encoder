class Caesar

  def initialize(rotation)
    @rotation = rotation
    @alphabet = ('a'..'z').to_a
  end

  def caesar_cipher(string)
    encrypt = ""

    string.each_codepoint do |letter|
      if letter >= 'a'.ord && letter <= 'z'.ord
        encrypt << 'a'.ord + (letter - 'a'.ord + @rotation) % @alphabet.length
      elsif letter >= 'A'.ord && letter <= 'Z'.ord
        encrypt << 'A'.ord + (letter - 'A'.ord + @rotation) % @alphabet.length
      else
        encrypt << letter
      end
    end
    encrypt
  end
end
