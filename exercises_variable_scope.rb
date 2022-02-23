#What will the following code print and why? Don't run it until you have tried to answer.
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

answer:  a = 7

# What will the following code print and why? Don't run it until you have tried to answer.
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

answer: a = 7

# What will the following code print and why? Don't run it until you have tried to answer.
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

answer: a = 7

# What will the following code print and why? Don't run it until you have tried to answer.
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

answer: a = "Xy-zy"
    # When we were working with a numeric variable, no changes were made 
    # to a. This was due to the fact that numbers are immutable, 
    # and assignment merely changes the object that a variable references.

    # Strings are mutable - they can be modified - and, in particular, 
    # the method String#[]= is a mutating method

# What will the following code print and why? Don't run it until you have tried to answer.
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

answer:
a = "Xyzzy"
    # When my_value begins executing, b is set to reference the same string 
    # that is referenced by a. If we modify that string by using b, 
    # then that modification is reflected in a; it's the same string.

    # However, we are not modifying that string in this exercise. 
    # Instead, we are assigning a completely new string to b. 
    # Assignment never changes the value of an object; instead, it creates a 
    # new object, and then stores a reference to that object in the variable on the left. 

# What will the following code print and why? Don't run it until you have tried to answer.
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

answer: an error.  the variable "a" is not available inside the method definition (it is not being passed in)
the puts will not execute.
    # Method definitions are self contained with respect to local variables. 
    # Even though a is defined before my_value is defined, it is not visible inside my_value


# What will the following code print and why? Don't run it until you have tried to answer.
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

answer: a = 3 because variables are avaiable inside blocks.
    # The scoping rules for a method invocation with a block differ from the rules for method definitions. 
    # a method invocation with a block has more open scoping rules; 
    # the block can use and modify local variables that are defined outside the block.

# What will the following code print and why? Don't run it until you have tried to answer.
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

answer: error. you can use of modify a local variable inside a block, but not initialize it. 


# What will the following code print and why? Don't run it until you have tried to answer.
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

answer: a = 7

# What will the following code print and why? Don't run it until you have tried to answer.
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

answer: Error - the local variabel "a" is not avaiable insode the method scope (it is not being passed in)
    # method definitions are self-contained with respect to local variables
    # the outer a is not visible inside the my_value method definition