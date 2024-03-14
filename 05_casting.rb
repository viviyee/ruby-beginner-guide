# CASTING (TYPE CONVERSION)


# To String
puts 123.to_s()
puts 123.45.to_s()

# To Integer
puts '100'.to_i()
puts 100.999.to_i()                     # 100 (doesn't round)

# To Float
puts '3.14'.to_f()
puts '3'.to_f()
puts 3.to_f()


# Integer or Float?

# Integer and Integer => Integer
puts 10 / 3

# Float and Float => Float
puts 10.0 / 3.0

# Integer and Float => Float
puts 10 / 3.0

# Float and Integer => Float
puts 10.0 / 3


# MINIAPP
year = 2030
name = "Your age in #{year}"

puts name.center(30, '*')
puts 'Enter your birthyear:'
birthyear = gets().to_i()

puts "#{name} is #{year - birthyear}."


