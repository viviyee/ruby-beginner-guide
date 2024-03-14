# STRINGS


# Concatenation
first_name = 'Emma'
last_name = 'Stone'
age = 30

puts first_name.length()
puts first_name[0]                              # E
puts first_name[10]                             # No error, returns nil
puts first_name[0, 3]                           # Emm

puts first_name + ' ' + last_name
# puts first_name + ' is ' + age                # TypeError
puts first_name << ' ' << last_name
=begin
This weird looking operator (<<) also modifies first_name
now first_name is "Emma Stone"
=end
puts "#{first_name} #{last_name}"               # Emma Stone Stone


# Conversion and Manipulation
name = 'aNgElInA jOlIe'

puts name.upcase()
puts name.downcase()
puts name.capitalize()
puts name.downcase().reverse()


# Searching and Checking
dialog = "
Mike: Good morning, Suzy.   \n
Suzy: Good morning, Mike.   \n
Tim: Good morning, Suzy. Good morning, Mike.
"
puts dialog.gsub('Good morning,', 'Guten Morgen')

sentence = 'Hello world'

puts sentence.include?('world')
puts sentence.start_with?('He')
puts sentence.end_with?('ld')
puts sentence.index('o')
puts sentence.rindex('o')
puts sentence.index('Universe')                         # No error, returns nil


# Splitting and Joining
countries = 'Denmark Norway Sweden Finland Iceland'.split()     # default (split by space)
letters = 'abcdef'.split('')
products = 'milk, cheese, yogurt'.split(', ')

puts countries.join(' ~ ')
puts letters.join()
puts products.join(',')


# Removing and Chopping
puts '      user entered whitespaces         '.strip()

user_input = gets()
# gets() function returns a string which has a new line ending
puts user_input + 'this will go to new line'

puts user_input.chomp() + ' (same line)'                # remove last \n
puts user_input.chomp().chop()                          # remove last letter
