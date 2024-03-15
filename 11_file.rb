# FILE


# Opening and Closing a File
file = File.open('countries.csv', 'r')              # returns a File class
    # puts file.read()
file.close()

File.open('countries.csv', 'r') do |file|
    # puts file.read()
end

=begin
    r   Read Mode
    w   Write Mode
    a   Append Mode
    r+  Read Write Mode         Pointer is set to the beginning of the file
    w+  Write Read Mode
    a+  Append Read Mode        
    b   Binary Mode (rb, wb, ab, r+b, w+b, a+b)
    t   Text Mode (rt, wt, at, r+t, w+t, a+t)
=end


# Reading from a File
file = File.open('countries.csv', 'r')
    # content = file.read()
    # char = file.readchar()              # Read one char at a time
    # line = file.readline()              # Read one line at a time
    # lines = file.readlines()             # returns an array

    # file.each_line() do |line|
    #     puts line
    # end
file.close()


# Writing to a File
file = File.open('my-diary.txt', 'a')
    # file.puts("Today I learned Ruby")
    # file.print("Tomorrow I will learn Rust")
    # file.write("The day after tomorrow I will learn Python")
file.close()


# Appending to a File
file = File.open('my-diary.txt', 'a')
    # file.puts('On Monday I learnt HTML/CSS')
    # file.print('On Tuesday I learnt JavaScript')
    # file.write('On Wednesday I learnt PHP')
file.close()


# Checking if a File exists
puts File.exist?('countries.csv')