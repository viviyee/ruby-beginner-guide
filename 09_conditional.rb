# CONDITIONAL


# Comparisons
# Case Equility (Belongs to a range, or matches a pattern)
puts (1..5) === 3
puts /tsch/ === 'tschüss'

# Combined Comparisons (<=>)
=begin
-1 if 1st operand is LESS than 2nd operand
0 if 1st and 2nd are EQUAL
1 if 1st operand is GRETER thean 2nd operand
=end
num_1 = rand(10)
num_2 = rand(10)
puts "num_1 is #{num_1}. num_2 is #{num_2}"

puts num_1 <=> num_2


# If
students = 60
if students >= 50
    puts 'There are a lot of students'
end


# Unless (Opposite of If)
students = 15
unless students >= 50
    puts 'There aren\'t many students'
end


# Postfix If and Unless
can_speak_japanese = true
puts "You will be fine in Japan" if can_speak_japanese
can_speak_japanese = false
puts "You will have a lot of difficulties in Japan" unless can_speak_japanese


# If Else
age = 15
if age >= 18
    puts 'You are an adult'
else 
    puts 'You are underage'
end


# If Elsif Else
temperature = 25

if temperature >= 30
    puts "It's a hot day"
elsif temperature <= 10
    puts "It's a cold day"
else
    puts "It's a lovely day"
end


# Inline If (Ternary Operator)
marks = 65
puts marks > 75 ? 'You passed' : 'You failed'


# Case When
color = 'purple'

case color
when 'red'
    puts 'Red represents love'
when 'green'
    puts 'Green represents nature'
when 'blue'
    puts 'Blue represents intelligence'
when 'orange'
    puts 'Orange represents energy'
else
    puts color + ' represents --'
end


# Logical Operators
gpa = 3
attandance = 81.001
if gpa >= 3.3 and attandance >= 80                  # and &&
    puts 'You can get up to 100% scholarship'
elsif gpa >= 3.3 or attandance >= 80                # or ||
    puts 'You can get up to 50% scholarship'
end


