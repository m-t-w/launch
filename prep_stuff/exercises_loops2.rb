# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.
count = 1

loop do
  puts "is odd!" if count.odd?
  puts "is even!" if count.even?
  break if count == 5
  count += 1
end

# Modify the following code so that the loop stops if number is equal to or between 0 and 10.
loop do
    number = rand(100)
    puts number
    break if number.between?(0, 10)
  end

# When process_the_loop is true, execute a loop that iterates exactly once and prints The loop was processed during that iteration.
# When process_the_loop is false, just print The loop wasn't processed!.
process_the_loop = [true, false].sample

loop do 
    puts "The loop wasn't processed!" if !process_the_loop
    break if !process_the_loop
    puts "The loop was processed"
    break
end

# Modify the code so "That's correct!" is printed and the loop stops when the user's answer 
# equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.
loop do
    puts 'What does 2 + 2 equal?'
    answer = gets.chomp.to_i
    if answer == 4
        puts "That's correct!"
        break
    else
        puts "Wrong answer. Try again!"
    end
  end

# Modify the code below so that the user's input gets added to the numbers array. 
# Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.size < 4? numbers << input : break
end
puts numbers

# Given the array below, use loop to remove and print each name. 
# Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do 
    puts names.pop
    break if names.empty?
end

# Modify the block so that it prints the current number and 
# stops iterating when the current number equals 2.
5.times do |index|
   puts index
   break if index == 2
  end

# Using next, modify the code below so that it only prints even numbers.
number = 0
until number == 10
  number += 1
  number.odd? ? number.next : (puts number)
end

# Use next to modify the code so that the loop iterates until either 
# number_a or number_b equals 5. Print "5 was reached!" 
# before breaking out of the loop.
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless (number_a || number_b) == 5

  print "5 was reached!"
  break 
end

# Given the code below, use a while loop to print "Hello!" twice.
def greeting
    puts 'Hello!'
  end
  
number_of_greetings = 2

i = 0
while i < number_of_greetings
    greeting
    i += 1
end
