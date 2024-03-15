# LOOPS


# For Loop
for i in 1..5           # inclusive 5
    # puts i
end

for i in 1...5          # exclusive 5
    # puts i            
end


# While Loop
i = 1
while i < 5
    # puts i
    i += 1
end


# Each Method
(1..5).each do |i|
    # puts i 
end


# Times Method
5.times do |i|              # 0 to 4
    # puts i
end


# Step Method
0.step(10, 2) do |i|        # 0, 2, 4, 6, 8, 10
    # puts i
end


# MINIAPP
name = 'Guess secret number'
n = 10
chance = 3
secret_number = rand(n)
failed = true

puts name
puts "Secret number is between 0 and #{n}"
puts "You have #{chance} chances to guess it right"

for i in 1..chance
    puts "Chance #{i}: Guess the number"
    number = gets().to_i()
    if number == secret_number
        puts "Bingo! You guessed it right. The secret number is #{secret_number}."
        failed = false
        break
    end
end

if failed
    puts "You failed #{chance} times. The secret number is #{secret_number}."
end


