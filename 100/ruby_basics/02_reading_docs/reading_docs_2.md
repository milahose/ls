## How would you use String#upcase to create an uppercase version of the string "xyz"?
Q: How would you use `String#upcase` to create an uppercase version of the string `"xyz"`?

A: `"xyz".upcase`

## Required Arguments
Q: Assume you have this Array: `a = %w(a b c d e)`.

How would you use `Array#insert` to insert the numbers `5`, `6`, and `7` between the elements with values `'c'` and `'d'`?

A: `a.insert(3, 5, 6, 7)`

## Optional Arguments
Q: Assume you have the following code:
```
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
```
What will each of the 3 `puts` statements print?

A: 
```
["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
["abc def ghi", "jkl mno pqr", "stu vwx yz"]
["abc def ghi", "jkl mno pqr,stu vwx yz"]
```

## Optional Arguments Redux
Q: Assume you have the following code:
```
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```
What will each of the 4 puts statements print?

A: 
```
# puts Date.new
-4712-01-01

# puts Date.new(2016)
2016-01-01

# puts Date.new(2016, 5)
2016-05-01

# puts Date.new(2016, 5, 13)
2016-05-13
```

## Mandatory Blocks
Q: The `Array#bsearch` method is used to search ordered `Array`s more quickly than `#find` and `#select` can. Assume you have the following code:
```
a = [1, 4, 8, 11, 15, 19]
```
How would you search this `Array` to find the first element whose value exceeds 8?

A: `a.bsearch { |n| n > 8 }`

## Multiple Signatures
Q: What do each of these puts statements output?
```
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```
A: 
```
# puts a.fetch(7)
=> IndexError
# puts a.fetch(7, 'beats me')
=> 'beats me'
# puts a.fetch(7) { |index| index**2 }
=> 49
```

## Keyword Arguments
Q: What does this code print?
```
5.step(to: 10, by: 3) { |value| puts value }
```
A: `5`, `8`

## Parent Class
Q: Use irb to run the following code:
```
s = 'abc'
puts s.public_methods.inspect
```
How would you modify this code to print just the public methods that are defined or overridden by the String class?

A: 
```
s = 'abc'
puts s.public_methods(false).inspect
```

## Included Modules
Q: Use irb to run the following code:
```
a = [5, 9, 3, 11]
puts a.min
```
Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

A:
```
a = [5, 9, 3, 11]
puts a.min(2)
``` 

More info at: http://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-min

## Down the Rabbit Hole
Q: In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:
```
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```
Find the documentation for YAML::load_file

A: http://ruby-doc.org/stdlib-2.5.1/libdoc/psych/rdoc/Psych.html#method-c-load_file