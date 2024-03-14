# VARIABLES


# Local Variables
name = 'Anna'
puts name


# Instance Variables @
class Person
    def initialize(name)
        @name = name
    end

    def greet()
        puts "Hello, my name is #{@name}"
    end
end

brian = Person.new('Brian')
brian.greet()


# Class Variables @@
class Ninja
    @@count = 0

    def initialize(name)
        @name = name
        @@count += 1
    end

    def self.total_ninjas
        @@count
    end
end

ninja_1 = Ninja.new('Naruto')
ninja_2 = Ninja.new('Sasuke')
ninja_3 = Ninja.new('Sakura')
puts Ninja.total_ninjas


# Global Variables $
$appname = 'My Ruby App'

def print_global()
    puts $appname
end

print_global()


# Constants
PI = 3.14
puts PI