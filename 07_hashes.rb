# HASHES


person_1 = {
    'name' => 'Nakashima',
    'age' => 30,
    'city' => 'Osaka'
}
puts person_1

person_2 = Hash.new
person_2['name'] = 'Takahashi'
person_2['age'] = 35
person_2['city'] = 'Niigata'
puts person_2

person_3 = {
    :name => 'Aikawa',
    :age => 27,
    :city =>'Nara'
}
puts person_3


# Accessing Values
puts person_1['name']
puts person_2['city']


# Adding Values
person_1['hobbies'] = ['Fishing', 'Swimming']
puts person_1


# Removing Values
person_2.delete('age')
puts person_2


# Checking Keys
puts person_1.key?('city')
puts person_2.has_key?('hobbies')
puts person_1.include?('name')


# Inverting Keys and Values
puts person_2.invert()


# Iterating Hash
person_1.each do |key, value|
    puts "#{key}: #{value}"
end


# Hash Methods
print person_2.keys
print person_1.values

puts person_1.merge(person_2)
=begin
Same keys will be person_2's values
=end


# MINIAPP
name = 'How to say your phone number in German'
words = {
    '1' => 'eins',
    '2' => 'zwei',
    '3' => 'drei',
    '4' => 'vier',
    '5' => 'fünf',
    '6' => 'sechs',
    '7' => 'sieben',
    '8' => 'acht',
    '9' => 'neun',
    '0' => 'null'
}

puts '*' * name.length
puts name

puts 'Enter your telephone number'
number = gets().chomp()

output = ''
number.split('').each do |n|
    if words.key?(n)
        german_word = words[n]
        output += (german_word + ' ')
    end
end

puts output






