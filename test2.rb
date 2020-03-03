Find a way to accumulate the :worldwide_grosses and return that Integer
using director_data as input

first_director_name = directors_database.first.values.first
first_director_hash = directors_database.find{ |x| x[:name] == first_director_name } 


p directors_database.find{ |x| x[:name] == first_director_name }

def gross_for_director(director_name)  
  
  row_index = 0 
  while row_index < directors_database.length do
    if directors_database[row_index][:name] = director_name do 
      indiv_gross = 0 
      inner_row_index = 0 
      while inner_row_index < directors_database[row_index][:movies].length do 
        indiv_gross += directors_database[row_index][:movies][inner_row_index][:worldwide_gross]
        inner_row_index += 1 
      end 
    end 
    row_index += 1 
  end
  
  p indiv_gross
  
end 


