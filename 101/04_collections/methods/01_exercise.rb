# What is the return value of the select method below? Why?
[1, 2, 3].select do |num|
  num > 5
  'hi'
end # => [1, 2, 3]
# select performs selection based on the 
# truthiness of the block's return value
# 'hi' is always 'truthy', so select
# returns a new array containing all the
# values in the original array
