require 'yaml'
require 'erb'

def prompt(message)
  Kernel.puts("\n=> #{message}")
end

def float?(num)
  num.to_f.to_s == num
end

def int?(num)
  num.to_i.to_s == num
end

def valid_number?(num)
  if float?(num) || int?(num)
    if (num == "0") || (num == "0.0")
      true
    elsif num.to_f.positive?
      true
    else
      puts "I'm sorry, we need a positive number, try again?"
    end
  else
    puts "Hmm, This doesn't seem to be a valid number!"
  end
end

def main_calculator_method(amount, apr, term)
  annual_percentage_decimal = apr.to_f / 100
  monthly_interest_rate = annual_percentage_decimal.to_f / 12
  loan_duration_in_months = term.to_f * 12

  j = monthly_interest_rate
  n = loan_duration_in_months
  monthly_payment = amount.to_f * (j / (1 - (1 + j)**(-n)))

  return monthly_interest_rate, loan_duration_in_months, monthly_payment
end

puts <<-MSG
\nWelcome to the Mortgage Calculator!
-----------------------------------

Which mortgage is best for you?

Use this tool to compare your monthly payments4 across 
different mortgage terms and interest rates.
MSG

interest = ""
loop do
  prompt "What will be the APR?"
  puts "For example, enter 4.6 for 4.6% APR:"
  interest = gets.chomp
  if interest == "0" || interest == "0.0"
    prompt "Do you intend to calculate a zero percent APR? Yes or no?"
    answer = gets.chomp.chr.upcase!
    answer == "Y" ? break : next
  end
  break if valid_number?(interest)
end
apr = interest.to_f

amount = ""
loop do
  prompt "What will be the loan amount?"
  amount = gets.chomp.gsub(",", "").gsub("$", "")
  if amount.to_f == 0.0
    prompt "Silly Goose! Monthly payments on a ZERO dollar loan would be ... ZERO dollars! "
    next
  end
  break if valid_number?(amount)
end
loan_amount = amount.to_f

mortgage_term_prompt = <<-MSG
  Will the loan term be: 
  10 years
  15 years 
  20 years 
  25 years 
  30 years
  MSG

# TODO: validate this for the set of inputs above^^
prompt <<-MSG
One thing you’ll need to decide on when taking out a mortgage is the \“loan term\”
This is the duration of the home loan, which can generally range from 10 to 30 years.
MSG
puts mortgage_term_prompt
loan_term = ""
loop do
  loan_term = gets.chomp
  if valid_number?(loan_term)
    break
  else
    puts "Hmm this doesn't seem to be a valid number"
  end
end
loan_term_in_years = loan_term.to_i

monthly_interest_rate, loan_duration_in_months, monthly_payment = main_calculator_method(loan_amount, apr, loan_term_in_years)

prompt <<-MSG
  An annual percentage rate of #{apr}% means that your
  monthly interest rate is #{monthly_interest_rate.round(4) * 100}%. \n
  With a loan term of #{loan_term} years (or #{loan_duration_in_months.round} months),
  Your monthly payment willl be $#{monthly_payment.round(2)} a month!
  MSG
