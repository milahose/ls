# Write a method that returns an Array that contains every other element of
# an Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements
# of the argument Array.
def oddities(arr)
  oddities = []
  arr.each_index { |i| oddities << arr[i] if i == 0 || i.even? }
  oddities
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
