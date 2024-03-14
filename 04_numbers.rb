# NUMBERS - Integer, Float


# Basic Arithmetic
puts 10 + 3
puts 10 - 3
puts 10 * 3
puts 10 / 3                     # returns whole number, 3
puts 10 / 3.0                   # returns 3.3333333333333335
puts 10 % 3
puts 10 ** 3


# Comparison
num_1 = 22
num_2 = 7 
puts num_1 > num_2
puts num_1 >= num_2
puts num_1 < num_2
puts num_1 <= num_2
puts num_1 == num_2
puts num_1 != num_2
puts '22' == num_1                  # false
puts num_2.between?(1, 10)


# Rounding
puts 3.6.round()
puts 3.6.floor()
puts 4.2.ceil()


# Formatting
puts 45.6.to_s()                # String

puts '45.6'.to_f()              # Float
puts '40'.to_f()                # Float 40.0

puts 45.6789.to_i()             # Integer 45
puts '45.6789'.to_i()           # Integer 45


# Random
puts rand()
puts rand(10)
=begin
rand(n) generates a random integer between 0 and n
n is exclusive
=end

