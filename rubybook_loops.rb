
# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". 
# Each loop can get info from the user. 
# puts "gimme some input"
# input = gets.chomp
# while input != "STOP" do 
#     puts "tell me again" 
#     input = gets.chomp 
# end

def downcount(num)
    puts num
    return if num == 0 
    downcount(num - 1)
end

downcount(5)

def count_to_zero(number)
    if number <= 0
      puts number
    else
      puts number
      count_to_zero(number-1)
    end
  end
  
  count_to_zero(10)
  count_to_zero(20)
  count_to_zero(-3)