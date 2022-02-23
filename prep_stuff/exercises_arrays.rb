pets = ['cat', 'dog', 'fish', 'lizard']
def get_pets
    my_pets = [pets[2], pets[3]]


def predict_weather
    sunshine = [true, false].sample
    
    if sunshine
        puts "Today's weather will be sunny!"
    else
        puts "Today's weather will be cloudy!"
    end
end

def digit_product(str_num)
    digits = str_num.chars.map { |n| n.to_i }
    product = 1
  
    digits.each do |digit|
      product *= digit
    end
  
    product
  end