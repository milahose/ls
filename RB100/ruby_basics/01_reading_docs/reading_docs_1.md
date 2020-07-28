## Where to Find Documentation
Q: Where can you find the most complete Ruby documentation?

A: https://ruby-doc.org/

## while Loops
Q: Locate the description of the while loop in the ruby documentation.

A: https://ruby-doc.org/core-2.4.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop

## Return Value of while
Q: Using the ruby documentation, determine what value a while loop returns.

A: The result of a while loop is nil unless break is used to supply a value.

## Return Value of break
Q: In the previous exercise, you learned that the while loop returns nil unless break is used. Locate the documentation for break, and determine what value break sets the return value to for the while loop.

A: https://ruby-doc.org/core-2.4.0/doc/syntax/control_expressions_rdoc.html#label-break+Statement

Break returns whatever value is passed to it. If there's no value, it returns nil.

## Large Numbers
Q: Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.

A: You can make large numbers easier to read by using underscores as follows:

```
1_987_654_321
```

Documentation can be found here: https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html

## Symbol Syntax
Q: Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.

A: `:john_doe`

More info here: https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html#label-Symbols

## Default Arguments in the Middle
Q: Consider the following method and a call to that method:
```
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```
Use the ruby documentation to determine what this code will print.

A: `[4, 5, 3, 6]`

More info at: https://ruby-doc.org/core-2.5.1/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

## String Class
Q: Locate and open the class documentation for the String class.

A: https://ruby-doc.org/core-2.5.1/String.html

## Right Justifying Strings
Q: Use the ruby documentation for the String class to determine which method can be used to right justify a String object.

A: `rjust`

## Class and Instance Methods
Q: Locate the ruby documentation for methods `File::path` and `File#path`. How are they different?

A: The first is a class method, the second is an instance method.

Found at: https://ruby-doc.org/core-2.5.1/File.html