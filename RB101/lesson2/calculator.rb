require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

# ask the user for two numbers
# ask the user for an operation to perform
# perform the opertation on the two numbers
# out put the result

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  return message
end

prompt MESSAGES['welcome']
name = ""
loop do
  name = gets.chomp

  if name.empty?
    prompt MESSAGES['valid_name']
  else
    break
  end
end

loop do # main loop
  number1 = ""
  loop do
    prompt MESSAGES['get_first_number']
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  number2 = ""

  loop do
    prompt MESSAGES['get_second_number']
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  operator_prompt = <<-MSG
  What's the operation you'd like to perform? 
  1) add 
  2) subtract 
  3) multiply 
  4) divide
  MSG

  prompt operator_prompt
  operator = ""
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['valid_operator']
    end
  end

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt "#{operation_to_message(operator)} the two numbers..."

  prompt "The result is #{result}"

  prompt "Do you want to perform another calculation?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the calculator"
