# METHODS


# Without Parameters
def greet                               # Optional Parentheses
    puts "Hello World"
end

def greet_2()
    puts "Konnichiwa"
end

# With Parameters
def introduce(name)
    puts "This is #{name}"
end

# with Default Parameters
def part_ways(name='my friend')
    puts ("Bye " + name)
end 

# With Multiple Parameters
def add(a, b)
    a + b                               # No explicit return statement is needed
end


# Calling Methods
greet                                   # Optional Parentheses
greet_2
greet()
introduce('Anna')
introduce 'Pete'                        # Optional Parentheses
part_ways                               
part_ways('Carl')
puts add(5, 6)


# Method Aliasing
alias intro introduce                   # new name first

intro('Jackie')


# MINIAPP
name = 'Car game'

puts '*' * name.length
puts name
puts 'Commands -> start, stop, quit'

def start_the_car(started)
    if started
        puts 'Car is already started'
    else
        started = true
        puts 'Ok. Ready to go!'
    end
    return started
end

def stop_the_car(started)
    if started
        started = false
        puts 'Ok. Car is stopped'
    else
        puts 'Car is already stopped'
    end
    return started
end


started = false
while true
    command = gets().chomp().downcase()

    case command
    when 'quit'
        break
    when 'start'
        started = start_the_car(started)
    when 'stop'
        started = stop_the_car(started)
    else
        puts 'Invalid command'
    end
end

