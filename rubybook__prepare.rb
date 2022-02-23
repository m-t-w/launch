# preparation.rb
require "pry"
prep = ["add more stuff", "ok here"]
puts prep[0]

prep << "add more stuff again"

binding.pry
puts "the length of the array is #{prep.count}"
