# ARRAYS


cities = ['Tokyo', 'Shanghai', 'London', 'Paris', 'Barcelona']
puts cities.first()
puts cities.last()
puts cities[-2]                                     # Paris
puts cities[100]                                    # nil
puts cities[1, 2]                                   # 2nd number is item count, not index

students = Array.new(10)                            # 15 nil in that rray
users = Array.new(3, 'default user name')           # you can pass a default value

numbers = (1..5).to_a()                             # range to array

grades = ['A', 'B', 'C', 'D', 'F'] * 3

puts cities.include?('New York')

print numbers.reverse(), numbers

print cities.sort(), cities


# Add
cities.push('Amsterdam')                            # Add to last place
cities << 'Seoul'

cities.unshift('Beijing')                            # Add to first place


# Remove
popped_item = cities.pop()                          # Remove from last place
print cities
puts popped_item

shifted = cities.shift()                            # Remove from first place
print cities
puts shifted


# Each
cities.each{ |city| puts "I love #{city}." }        # in-line block

cities.each do |city|                               # multi-line block
    letters = city.split('')
    puts letters.join(' ')
end


# Map, Collect
squaring = numbers.map{ |n| n ** 2 }
cubing = numbers.collect{ |n| n ** 3 }
print squaring, cubing


# Select, Reject
print (1..10).select{ |n| n.even? }
print (1..10).reject{ |n| n.odd? }


# MINIAPP
name = 'Shopping cart'
puts "\n" + name
puts '*' * name.length

cart = []
while true
    puts "Enter item name"
    name = gets().chomp().strip()
    if name.length < 1
        break
    end

    puts "Price"
    price = gets().to_f()
    cart.push([name, price])
end

if cart.length >= 1
    total = 0
    cart.each do |item|
        puts "#{item[0]} \t\t\t #{item[1]}" 
        total += item[1]
    end
    message = "Total: #{total}"

    puts '=' * message.length
    puts message
end


