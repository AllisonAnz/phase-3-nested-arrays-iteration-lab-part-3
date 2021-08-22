# For this final lab on traversing Array of Arrays we're going to apply the double while loop 
# to find a single value 

# Traverse Array of Arrays's to Produce a Single Value 
# Another variant on traversing nested Arrays is traversing the matrix and accumulating all the values
# Imagine a grid representing a guessing game 
# In each cell of the grid, the game makers have put some amount of cash 
# Sum up all the possible values to determine how much money is in the grid 
guessing_game_grid = [
 [1, 2, 1, 7, 3],
 [2, 100, 15, 4, 18],
 [15, 16, 99, 1, 2, 11]
]

total = 0
row_index = 0
while row_index < guessing_game_grid.count do
  element_index = 0
  while element_index < guessing_game_grid[row_index].count do
    total += guessing_game_grid[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end
total #=> 297 
#---------------------------------------------------------------------------
mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]


def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  final_string = "" 
  row_index = 0 
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do      
      if src[row_index][element_index].class == String
        final_string += src[row_index][element_index] + ' '
      end
      element_index += 1
    end
    row_index += 1
  end
  final_string
end

p join_nested_strings(mixed_data) 