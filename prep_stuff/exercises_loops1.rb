# Modify the code so the loop stops after the first iteration.
loop do
    puts 'Just keep printing...'
  end

answer: 
        x=0
        loop do
            puts 'Just keep printing...'
            break x==1
        end

# Stopping a loop is as simple as adding the reserved word break inside the loop.
    loop do
        puts 'Just keep printing...'
        break
    end

# Both loops currently loop infinitely. 
# Modify the code so each loop stops after the first iteration.

loop do
    puts 'This is the outer loop.'
  
    loop do
      puts 'This is the inner loop.'
      break
    end
    break
  end
  
  puts 'This is outside all loops.'


# Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
 
  break if iterations == 5
  iterations += 1
end

# Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
    puts 'Should I stop looping?'
    answer = gets.chomp
    break if answer == "yes"
  end

# Modify the code below so "Hello!" is printed 5 times.
say_hello = true
i = 1

while say_hello
  puts 'Hello!'
  say_hello = false if i == 5
  i += 1
end

# Using a while loop, print 5 random numbers between 0 and 99. 
# The code below shows an example of how to begin solving this exercise.
i = 0
while i < 5
  puts rand(100)
  i += 1
end

# The following code outputs a countdown from 10 to 1. 
# Modify the code so that it counts from 1 to 10 instead.
count = 1

until count == 11
  puts count
  count += 1
end

# Given the array of several numbers below, 
# use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.empty?
    puts numbers.pop
end 

# The code below shows an example of a for loop. 
# Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
    puts i if i.odd?
end

# Your friends just showed up! 
# Given the following array of names, use a for loop to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for n in friends 
     puts "Hello, #{n}!"
end

