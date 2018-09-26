#Turn this array into a hash where the names are the
# keys and the values are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |el, indx|
  flintstones_hash[el] = indx
end

puts flintstones_hash
