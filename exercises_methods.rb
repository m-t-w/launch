#Write a method named print_me that prints I'm printing within the method! 
# when invoked as follows:

def print_me
    print "I'm printing within the method!"
end


def print_me
     "I'm printing the return value!"
end

# Write two methods, one that returns the string "Hello" and one that returns the string "World". 
# Then print both strings using #puts, combining them into one sentence.

def hello
    'hello'
end

def world
    "world"
end

puts hello + " " + world

def greet
    hello + " " + world
end

# Using the following code, write a method called car that takes two arguments 
# and prints a string containing the values of both arguments.

def car(make, model)
    puts make + " " + model
end


car('Toyota', 'Corolla')

#Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. 
#Pass daylight into the method as the argument to determine whether it's day or night.

def time_of_day(daylight)
    print "It's daytime!" if daylight
    print "It's nighttime!" if !daylight
end

# 

def dog(name)
    return name
end
  
def cat(name)
    return name
end
  
  puts "The dog's name is #{dog('Spot')}."
  puts "The cat's name is #{cat('Ginger')}."

#
def assign_name(name="Bob")
    return name
end

#

def add(num, num2)
    num + num2
end

def multiply(num, num2) 
    num * num2
end

#
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def return_random_value(arr)
    index = rand(arr.size)
    return arr[index]
end

def sentence(name, activity)
    sentence_string = "#{name} went #{activity} today!"
end

sentence(return_random_value(names), return_random_value(activities))




