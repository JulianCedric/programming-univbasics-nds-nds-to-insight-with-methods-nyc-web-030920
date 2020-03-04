$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp' 

# 2020.03.03: JP: The directors_database NDS contains various directors, their movies, and info about those movies. In these First-Order Methods, we've created methods that 'wrap' lower-level (fundamental) methods into the ones you see below. In the next lab, we'll create "Nth-Order Methods", which are methods that wrap FIRST-Order Methods so that our code is even easier to read and communicate with other fellow coders. 

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

#########################################################################################

def directors_totals(nds)

  array = []
  row_index = 0 
  while row_index < directors_database.length do
    array << directors_database[row_index][:name] 

    grosses_per_director = 0
    inner_array = []
    inner_row_index = 0 
    while inner_row_index < directors_database[row_index][:movies].length do
      grosses_per_director += directors_database[row_index][:movies][inner_row_index][:worldwide_gross]
      inner_array << grosses_per_director
      inner_row_index += 1 
    end
  
  array << inner_array.max 
      
  row_index += 1 
  end 

new_array = []
string_array = []
integer_array = []   
index = 0 
while index < array.length do
  if array[index].class == String 
    string_array << array[index] 
  elsif array[index].class == Integer 
    integer_array << array[index]
  end 
  new_array << string_array || integer_array
  index += 1 
end 

hash = {
  
  "Stephen Spielberg" => 1357566430   
  
}

hash_index = 0 
while hash_index < string_array.length do 
  hash[string_array[hash_index]] = integer_array[hash_index]
  hash_index += 1 
end 

hash 

end 