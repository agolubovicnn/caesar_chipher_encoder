require_relative 'caesar'

puts "Enter rotation number:"
rotation = gets.to_i
cesar = Caesar.new(rotation)

loop do
  puts "Enter input for encrypting:"
  string = gets.to_s

  if string.size > 1
    puts "Your encrypted output is:"
    puts cesar.caesar_cipher(string)
  else
    puts "You must input at least one letter. Please try again!"
    break
  end
end
