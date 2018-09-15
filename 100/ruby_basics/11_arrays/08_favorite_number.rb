name_num_pairs = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
nested = []

name_num_pairs.each_with_index do |el, i| 
  if i.even? 
    nested.push([name_num_pairs[i], name_num_pairs[i - 1]]) 
  end
end

p nested