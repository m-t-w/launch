
def say(words)
    puts words
end

a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"


a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

puts "Before no_mutate method: #{a}"
p no_mutate(a)
puts "After no_mutate method: #{a}"
puts "\n"

def add_three(number)
    number + 3
end
p add_three(4)


def add(a, b)
    a + b
end

def subtract(a, b) 
    a - b
end

add(20, 45)
subtract(80, 10)

def multiply(num1, num2)
    num1 * num2
end


p multiply(add(20, 45), subtract(80, 10))



puts "\n"



def greet(name)
    "hello #{name}"
end

def multiply(a, b)
    a * b
end









