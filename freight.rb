Constant = 250.0
def multiply(length, width, height)
    length.to_f * width.to_f * height.to_f
end

puts "what is the length in meters?"
length = gets.chomp
puts "what is the width in meters?"
width = gets.chomp
puts "what is the height in meters?"
height = gets.chomp

cubic_weight = multiply(length, width, height).to_i * Constant
puts cubic_weight