# CLASSES


# Create a Class
class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def greet()
        puts "Hello, my name is #{@name}"
    end

    def is_adult?()
        return @age >= 18 ? true : false
    end
end

anna = Person.new('Anna', 24)               # Create a Object/Instance
puts anna.is_adult?


# GETTERS and SETTERS
class Scientist
    attr_accessor :name, :age                   
end

marie = Scientist.new()
marie.name = 'Marie Curie Sklodowska'
marie.age = 67
puts marie.name, marie.age

# attr_accessor equivalent
class Cosmonaut
    def name=(name)                 # SETTER
        @name = name
    end

    def name                        # GETTER
        return @name
    end

    def age=(age)                   # SETTER
        @age = age
    end

    def age                         # GETTER
        return @age
    end
end

yuri = Cosmonaut.new()
yuri.name = 'Yuri Gagarin'
yuri.age = 34
puts yuri.name, yuri.age


# GETTER: attr_reader (read-only access) 
class Student
    attr_reader :name

    def initialize(name, age)
        @name = name
        @age = age
    end
end

bob = Student.new('Bob', 17)
puts bob.name


# SETTER: attr_writer (write-only access)
class Employee
    attr_writer :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

suzy = Employee.new('Suzy', 34)
suzy.age = 40


# Class Method
class MyClass
    def self.my_class_method()                  # self.
        puts "This is a class method"
    end
end

MyClass.my_class_method()



# MINIAPP
name = 'Math quiz'
puts '*' * name.length
puts name

class MathQuiz
    @@operators = ['+', '-', '*', '/']

    attr_accessor :your_answer
    attr_reader :a, :b, :operator

    def initialize()
        @a = rand(100)
        @b = rand(100)
        @operator = @@operators.sample()
    end

    def show_quiz()
        return "#{@a} #{@operator} #{@b}"
    end

    def answer()
        case @operator
        when '+'
           return @a + @b
        when '-'
            return @a - @b
        when '*'
            return @a * @b
        when '/'
            return @a / @b
        else 
            return nil
        end
    end

    def is_right?()
        return answer() == @your_answer ? true : false
    end
end

puts "How many rounds do you want to play?"
rounds = gets().to_i()
puts "\n"

quizes = []
for i in 1..rounds
    quiz = MathQuiz.new()
    puts "Round #{i}"
    puts quiz.show_quiz()

    answer = gets().to_i()
    quiz.your_answer = answer

    quizes.push(quiz)
    puts "\n"
end

corrected = 0
header = "Round".ljust(8) + "Quiz".ljust(20) + "Answer".ljust(10) + "Your answer".ljust(15) + "Result".ljust(10)
bar = '=' * header.length

puts bar
puts header
puts bar

quizes.each_with_index do |quiz, index|
    puts "#{index + 1}".ljust(8) + "#{quiz.show_quiz()}".ljust(20) +  "#{quiz.answer()}".ljust(10) + "#{quiz.your_answer}".ljust(15) + "#{quiz.is_right?()}".ljust(10)

    quiz.is_right?() ? corrected += 1 : nil
end

puts bar
puts "Total result: #{corrected}/#{rounds}".rjust(header.length)
puts bar