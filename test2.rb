# The directors_database NDS contains various directors, their movies, and info about those movies. In these First-Order Methods, we've created methods that 'wrap' lower-level (fundamental) methods into the ones you see below. In the next lab, we'll create "Nth-Order Methods", which are methods that wrap FIRST-Order Methods so that our code is even easier to read and communicate with other fellow coders. 


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


