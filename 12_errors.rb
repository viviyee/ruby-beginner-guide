# ERRORS


# Begin Rescue
begin
    result = 10 /0
rescue 
    # puts "Cannot divide by zero"
end


# Catch an Error 
begin
    result = 10 /0
rescue => e
    # puts e
end


# Multiple Errors
mixed = ['0', '11', '4', 'A', 'Z']
begin
    index = rand(mixed.length)
    result = 100 / mixed[index].to_i()
rescue ZeroDivisionError => e
    # puts e
rescue => e
    # puts e
end


# Else (execute if no errors)
# Ensure (equivalent to finally) 
mixed.push(false)
begin
    index = rand(mixed.length)
    random_thing = mixed[index]
    result = 100 / random_thing.to_i()
rescue ZeroDivisionError => e
    puts "We got ZeroDivisionError"
rescue => e
    puts e
else 
    puts "If no errors, this line will be seen on terminal"
ensure
    puts "This will be displyed nevertheless #{random_thing}"
end


# Raise Error
def open_bank_account(age)
    raise(ArgumentError, 'Invalid Age') unless age.is_a?(Integer) && age > 0
    puts "Bank account is opened"
end

begin
    open_bank_account('21')
rescue ArgumentError => e
    puts "We catched ArgumentError. #{e}"
rescue => e
    puts e
end


# Custom Error
class BankAccountAgeError < StandardError
    def initialize(message)
        super(message)
    end
end

begin
    raise BankAccountAgeError.new('We cannot open a bank account')
rescue BankAccountAgeError => e
    puts e
rescue => e
    puts e
end