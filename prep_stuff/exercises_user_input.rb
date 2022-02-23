#Write a program that asks the user to type something in, after which your program should simply display what was entered.

puts "say something"
input = gets.chomp
puts input 

#Write a program that asks the user for their age in years, and then converts that age to months.

puts "say age"
input = gets.chomp
puts (input.to_i * 12)

#Write a program that asks the user whether they want the program to print "something", 
#then print it if the user enters y. Otherwise, print nothing.

puts "Do you want the program to print \"something\"?"
input = gets.chomp
if input == "y"
    print "something"
end

# Modify your program so it prints an error message for any inputs that 
# aren't y or n, and then asks you to try again. Keep asking for a response 
# until you receive a valid y or n response. In addition, your program 
# should allow both Y and N (uppercase) responses;

def only_one_right_answer
  puts "Do you want the program to print \"something\"?"
  input = gets.chomp.downcase

  if input == "y"
    print "something"
  else
    puts "Try again."
    only_one_right_answer
  end
end

only_one_right_answer

# Write a program that prints 'Launch School is the best!' 
# repeatedly until a certain number of lines have been printed.
# The program should obtain the number of lines from the user, 
# and should insist that at least 3 lines are printed.

def a_set_up 
    puts "gimme a number please. Enter a number >= 3"
    number = gets.chomp.to_i

    (number = 3) if number < 3
    number.times { puts 'Launch School is the best!' }
end

# Write a program that displays a welcome message, 
# but only after the user enters the correct password, 
# where the password is a string that is defined as a constant in your program. 
# Keep asking for the password until the user enters the correct password.

PASS="supercalafragalisticexpialadoshus"

  loop do 
    puts "Please enter your password:"
    input = gets.chomp
    if input == PASS 
        puts "Welcome!"
        break
    end
    puts "Invalid password!"
  end

# modify the program so it also requires a user name.
# solicit both the user name and the password, then validate both
# issue a generic error message if one or both are incorrect; 
# the error message should not tell the user which item is incorrect.

PASS="supercalafragalisticexpialadoshus"
UNAME="bob"

  loop do 
    puts "please enter your username:"
    user = gets.chomp
    puts "Please enter your password:"
    pword = gets.chomp

    if (pword == PASS && user == UNAME)
        puts "Welcome!"
        break
    end
    puts "Authorization failed!"
  end

# Write a program that asks the user to enter two integers, 
# then prints the results of dividing the first by the second. 

def valid_number?(number_string)
    number_string.to_i.to_s == number_string
  end

def division
    int1=""
    int2=""

    loop do 
        puts "please enter a numerator:"
        int1 = gets.chomp
        break if valid_number?(int1)
        puts "Invalid input. Only integers are allowed."
    end 

    loop do 
        puts "please enter a denominator:"
        int2 = gets.chomp
        if int2.to_i == 0
            puts "Invalid input. A denominator of 0 is not allowed."
            next
        end
        break if valid_number?(int2)
    end

    result = int1.to_i / int2.to_i
    puts " #{int1} / #{int2} is #{result}"
end


# Modify this program so it repeats itself after each input/print iteration, 
# asking for a new number each time through. The program should keep running 
# until the user enters q or Q.

def lsprint
    number_of_lines = nil
    loop do
        loop do
            puts '>> How many output lines do you want? Enter a number >= 3:'
            number_of_lines = gets.chomp
            break if number_of_lines.to_s.downcase == "q"
            break if number_of_lines.to_i >= 3
            puts ">> We need more than 3. Try again!"
        end

        break if number_of_lines.to_s.downcase == "q"
        number_of_lines = number_of_lines.to_i

        while number_of_lines > 0
            puts 'Launch School is the best!'
            number_of_lines -= 1
        end
    end
end

# Write a program that requests two integers from the user, 
# adds them together, and then displays the result
# one of the integers be positive, and one negative

def valid_number?(number_string)
    number_string.to_i.to_s == number_string && number_string.to_i != 0
  end

def add_em_up
    numbers = []
    loop do
        loop do 
            puts "Please enter a positive or negative integer: "
            numbers << gets.chomp
            puts "Please enter another positive or negative integer: "
            numbers << gets.chomp
            break if valid_number?(numbers[0]) && valid_number?(numbers[1])
            puts "Invalid input. Only non-zero integers are allowed."
            numbers = []
        end
        numbers.each_index { |i| numbers[i] = numbers[i].to_i }
        if (numbers[0].negative? && numbers[1].negative?) || (numbers[0].positive? && numbers[1].positive?)
            puts "Sorry. One integer must be positive, one must be negative."
            numbers = []
            next
        end
        break 
    end
    result = numbers[0] + numbers[1]
    puts "#{numbers[0]} plus #{numbers[1]} is #{result}"
end


