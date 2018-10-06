# Write a method that returns one UUID when called with no parameters.
# The number of possible UUID values is approximately 3.4 X 10E38.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def generate_uuid
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

puts generate_uuid
