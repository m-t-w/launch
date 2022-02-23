# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }
# Same as above, but only print out values greater than 5.
arr.each { |n| puts n if n > 5 }
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
print arr.select { |n| n % 2 != 0 }
# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push(11).unshift(0)
print arr
# Get rid of 11. And append a 3.
print arr.pop
print arr << 3
# Get rid of duplicates without specifically removing any one value.
print arr.uniq!
# What's the major difference between an Array and a Hash?
# Create a Hash, with one key-value pair, using both Ruby syntax styles.
my_hash = { avi: "cutiepie" }
my_hash = { :avi => "cutiepie" }
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h
h.delete_if { |k,v| v < 3.5 }
# Can hash values be arrays? Can you have an array of hashes? (give examples)


