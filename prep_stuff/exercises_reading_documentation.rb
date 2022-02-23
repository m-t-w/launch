Reading Documentation 1

# Where can you find the most complete Ruby documentation?
https://ruby-doc.org/
https://docs.ruby-lang.org/en/

#Locate the description of the while loop in the ruby documentation.
https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/while.html
https://ruby-doc.com/core/doc/syntax/control_expressions_rdoc.html#label-while+Loop

#Using the ruby documentation, determine what value a while loop returns.
The result of a while loop is nil unless break is used to supply a value.

#In the previous exercise, you learned that the while loop returns nil 
#unless break is used. Locate the documentation for break, and determine 
#what value break sets the return value to for the while loop.

break accepts a value that supplies the result of the expression it is “breaking” out of
break returns nil when not given an argument 

#Using the ruby documentation, determine how you can write large numbers 
#in a way that makes them easier to read.
https://docs.ruby-lang.org/en/3.1/doc/syntax/literals_rdoc.html#label-Number+Literals
1234
1_234
These numbers have the same value, 1,234. 
The underscore may be used to enhance readability for humans. 
You may place an underscore anywhere in the number.

#Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.
https://docs.ruby-lang.org/en/3.1/Symbol.html
https://docs.ruby-lang.org/en/3.1/doc/syntax/literals_rdoc.html#label-Symbol+Literals
You may reference a symbol using a colon: :my_symbol.

#Locate and open the class documentation for the String class.
https://docs.ruby-lang.org/en/3.1/String.html

#Use the ruby documentation for the String class to determine which method can be used to right justify a String object.
rjust

Reading Documentation 2

#How would you use String#upcase to create an uppercase version of the string "xyz"?
"xyz".upcase
https://docs.ruby-lang.org/en/3.1/String.html#method-i-upcase

# a = %w(a b c d e)
#How would you use Array#insert to insert the numbers 5, 6, and 7 
#between the elements with values 'c' and 'd'?
https://docs.ruby-lang.org/en/3.1/Array.html#method-i-insert
-- mutates the caller
insert(index, *objects) → self
a.insert(3, 5,6,7)

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect
# puts s.split(',').inspect
# puts s.split(',', 2).inspect
# What will each of the 3 puts statements print?
https://docs.ruby-lang.org/en/3.1/String.html#method-i-split

# puts s.split.inspect
If pattern is nil, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as if ‘ ’ were specified.
https://docs.ruby-lang.org/en/3.1/String.html#method-i-inspect
Returns a printable version of self, enclosed in double-quotes, and with special characters escaped:

["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]

#puts s.split(',').inspect
["abc def ghi", "jkl mno pqr", "stu vwx yz"]

# puts s.split(',', 2).inspect
["abc def ghi", "jkl mno pqr,stu vwx yz"]


