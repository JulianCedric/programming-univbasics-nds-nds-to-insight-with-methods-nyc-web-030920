$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp' 

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# first_director_name = directors_database.first.values.first

# first_director_hash = directors_database.find{ |x| x[:name] == first_director_name } 


# p directors_database.find{ |x| x[:name] == first_director_name }

# def gross_for_director(director_name)  
  
#   row_index = 0 
#   while row_index < directors_database.length do
#     if directors_database[row_index][:name] = director_name do 
#       indiv_gross = 0 
#       inner_row_index = 0 
#       while inner_row_index < directors_database[row_index][:movies].length do 
#         indiv_gross += directors_database[row_index][:movies][inner_row_index][:worldwide_gross]
#         inner_row_index += 1 
#       end 
#     end 
#     row_index += 1 
#   end
  
#   p indiv_gross
  
# end 



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