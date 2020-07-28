def count_occurrences(arr)
  occurances = {}

  for item in arr do
    if occurances[item]
      occurances[item] += 1
    else
      occurances[item] = 1
    end
  end

  occurances.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)