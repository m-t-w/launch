puts "tommy" + "walker"

1234

puts "the thousands is #{1234/1000}"
puts "the hundreds is #{1234/617}"
puts "the hundreds is #{1234/411}"
puts "the ones is #{1234/308}"

puts thousands = 4936 / 1000
puts hundreds = 4936 % 1000 / 100
puts tens = 4936 % 1000 % 100 / 10
puts ones = 4936 % 1000 % 100 % 10

titles = {
    "taxidriver" => "1975",
    "et" => "1985",
    "babe" => "1992"
}

titles.each { |key, value| puts value }

dates = [1975, 1985, 1992]

dates.each { |n| puts n }


def factorial(num) 
    answer = 1
    num.downto(1) { |n| answer = (n * answer) }
    return answer
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

puts 2.3 * 2.3

puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34


