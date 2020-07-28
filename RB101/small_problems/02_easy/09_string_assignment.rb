name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# =>
'BOB'
'BOB'

# methods without the bang operator return a copy of the original,
# but using the '!' modifies the original value in memory, effectively
# changing (mutating) the original value held in memory.