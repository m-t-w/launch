#
var = ""

# 
puts "It's now 12 o'clock."
#
irb(main):1650:0> name = 'Roger'
=> "Roger"
irb(main):1651:0> name.casecmp?('RoGeR')
=> true
irb(main):1652:0> name.casecmp?('DAVE')
=> false
#

name = 'Elizabeth'
puts "Hello, #{name}!"
#
first_name = 'John'
last_name = 'Doe'

full_name = first_name + " " +  last_name

puts full_name
#
state = 'tExAs'
=> "tExAs"
irb(main):1662:0> print state.downcase!.capitalize!

#
greeting = 'Hello!'
greeting = "Goodbye!"
puts greeting

irb(main):1672:0> greeting.gsub!("Hello!", "Goodbye!")
=> "Goodbye!"
irb(main):1673:0> puts greeting
Goodbye!
=> nil 

# Using the following code, split the value of alphabet by individual characters and print each character.
alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet.each_char { |ch| puts ch }

#Given the following code, use Array#each to print the 
# plural of each word in words.

words = 'car human elephant airplane'
words.split.each { |word| puts word + "s" }

#
colors = 'blue pink yellow orange'
puts colors.include?("yellow")
puts colors.include?("purple")


