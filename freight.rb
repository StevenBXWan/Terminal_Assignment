# Constant = 250.0
# def multiply(length, width, height)
#     length.to_f * width.to_f * height.to_f
# end

# puts "what is the length in meters?"
# length = gets.chomp
# puts "what is the width in meters?"
# width = gets.chomp
# puts "what is the height in meters?"
# height = gets.chomp

# cubic_weight = multiply(length, width, height).to_i * Constant
# puts cubic_weight

class CubicCalc
    attr_reader :name

    def initialize(name)
        @name = name
        @length = []
        @width = []
        @height = []
        @cubic_weight = []
    end

    def dimensions(measurements, other_type)
        case other_type
        when "length"
        @length << measurements
        when "width"
        @width << measurements
        when "height"
        @height << measurements
        else
            puts "invalid other_type"
        end
    end

    def multiply(length, width, height)
        @length = length
        @width = width
        @height = height
        @constant = 250
        cubic_weight = length * width * height * @constant
        @cubic_weight = cubic_weight
    end

    def print_details ()
        puts "printing dimensions for: #{@name}"
        puts "length: #{@length}"
        puts "width: #{@width}"
        puts "height: #{@height}"
        puts "The cubic weight is #{@cubic_weight}"
    end
end

puts "What is the item you're sending?"
name = gets.chomp
item = CubicCalc.new(name)
puts "What is the Length in meters of #{name}?"
length = gets.to_f
item.dimensions(length, "length")
puts "What is the width?"
width = gets.to_f
item.dimensions(width, "width")
puts "What is the height?"
height = gets.to_f
item.dimensions(height, "height")

puts "This is the cubic weight of your item #{@cubic_weight}"
puts item.multiply(length, width, height)

item.print_details()
