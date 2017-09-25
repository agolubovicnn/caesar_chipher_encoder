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

puts "Enter rotation number:"
rotation = gets.to_i
cesar = Caesar.new(rotation)

puts "Enter input for encrypting:"
string = gets.to_s

puts "Your encrypted output is:"
puts cesar.caesar_cipher(string)
