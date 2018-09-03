# 1. Given a hash of family members, with keys as the title 
#    and an array of names as the values, use Ruby's built-in 
#    select method to gather only immediate family members' 
#    names into a new array.

family = {  
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

fam = family.select { |key, value| key == :brothers || key == :sisters }
immediate_family = immediate_family.values.flatten

# 2. Look at Ruby's merge method. Notice that it has two versions. 
#    What is the difference between merge and merge!? Write a program 
#    that uses both and illustrate the differences.

extended_fam = {
  nieces: ['julie', 'elizabeth', 'kate'],
  nephews: ['johnny', 'brian', 'seth']
}
total_fam = family.merge(extended_fam)
p family
p total_fam

family.merge!(extended_fam)
p family

# 3. Using some of Ruby's built-in Hash methods, write a program 
#    that loops through a hash and prints all of the keys. Then write 
#    a program that does the same thing except printing the values. 
#    Finally, write a program that prints both.

def hash_keys(hash)
  hash.each_key { |key| puts key }
end

hash_keys(total_fam)

def hash_vals(hash)
  hash.each_value { |val| puts val }
end

hash_vals(total_fam)

def hash_key_val(hash)
  hash.each { |key, val| puts "#{key}: #{value}" }
end

hash_vals(total_fam)

# 4. Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# 5. What method could you use to find out if a Hash contains a specific 
#    value in it? Write a program to demonstrate this use.

def has_value?(hash, value)
  hash.has_value?(value)
end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
has_value?(person, 'painting')

# 6. Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in 
# a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]

def anagram(arr)
  result = {}

  arr.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end

  result.each_value do |v|
    puts "------"
    p v
  end
end 

anagram(words)

# 7. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# Answer: First one is the newer syntax, using a symbol for the key and
#         the second one is the older syntax, using a string as they key.

# 8. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

  # A. We're missing keys in an array variable.

  # B. There is no method called keys for Array objects.

  # C. keys is an Array object, but it hasn't been defined yet.

  # D. There's an array of strings, and we're trying to get the 
  #   string keys out of the array, but it doesn't exist.

# Answer: B