puts "put in a number"
a = gets.chomp.to_i

if a == 3
    puts "a is 3"
elsif a == 4
    puts "a is 4"
else 
    puts "neither"
end


# must use "then" keyword when using 1-line syntax
if a == 3 then puts "a is 3 again" end

    # can phrase it backwards
puts "a is 3 again again" if a == 3

# unless example
puts "x is NOT 3" unless a == 3

# ternary operator example
boolean ? do if true : do if not true