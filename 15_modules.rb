# MODULES


module JapaneseModule                 # module
    def greet()
        puts 'Konnichiwa'
    end
end

include JapaneseModule                # include 
JapaneseModule.greet()


# Mixins
module GermanModule
    def greet()
        puts 'Guten Tag'
    end
end

class GermanPerson
    include GermanModule
end

carl = GermanPerson.new()
carl.greet()


# Constants
module Constants
    DB_USERNAME = 'Admin1234'
    DB_PASSWORD = 'xXsS33@tsch#'
end

puts Constants::DB_PASSWORD                             # :: for modules and constants        


# Netsted Modules
module University
    module Department
        def self.do_department_duties()                 # self
            puts 'Do department duties'
        end
    end

    def do_university_duties()
        puts 'Do university duties'
    end
end

University::Department.do_department_duties()           # :: for modules and constants

# Require Modules
# require_relative '15_modules.rb'