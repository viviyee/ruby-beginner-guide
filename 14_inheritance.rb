# INHERITANCE


class Dog
    def bark()
        puts 'wan wan'
    end

    def walk()
        puts 'dog is walking~'
    end

    def sleep()
        puts 'dog is sleeping'
    end
end

class Chihuahua < Dog
    def do_evening_routine()
        walk()                                      # calls Parent's walk method
        puts 'chihuahua is grooming~'
    end

    def sleep()
        super                                       # calls Parent's sleep method
        puts 'chihuahua is sleeping'
    end
end

my_dog = Chihuahua.new()
my_dog.bark()
my_dog.do_evening_routine()
my_dog.sleep()


# Initializing 
class Employee
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end
end

class Developer < Employee
    attr_accessor :language, :framework

    def initialize(name, age, language, framework)
        super(name, age)                                # calls Parent's initialize method
        @language = language
        @framework = framework
    end
end

anna = Developer.new('Anna', 31, 'Ruby', 'Ruby on Rails')
anna.age = 28
puts anna.name, anna.age, anna.language, anna.framework