# In the code below, sun is randomly assigned as 'visible' or 'hidden'.
sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
if sun == "visible"
    puts "The sun is so bright!"
end

# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
puts "The clouds are blocking the sun!" unless sun == "visible"

# 
puts "The clouds are blocking the sun!" unless sun == "visible"
puts "The sun is so bright!" if sun == "visible"

# Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
boolean = [true, false].sample

boolean ? print("I'm true!") : print("I'm false!")

# Write a case statement that prints "Go!" if stoplight equals 'green', 
# "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
    puts "Go!"
when 'yellow'
    puts "Slow down!"
when 'red'
    puts "Stop!"
end

#
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'  
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# Write an if statement that returns "Be productive!" if status equals 'awake' 
# and returns "Go to sleep!" otherwise. Then, assign the return value of the 
# if statement to a variable and print that variable.
status = ['awake', 'tired'].sample

demanding = (status == 'awake') ? "Be productive!" : "Go to sleep!"

#Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow'then puts 'Slow down!'
else              puts 'Stop!'
end


