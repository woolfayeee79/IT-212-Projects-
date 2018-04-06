# RaggedArray Example
# A ragged array is an array whose rows need not be the same length.
# Define a method that reads a ragged array from a file.
# Then use the sum_array method used in the Array2 Example to sum
# each row of the ragged array, creating a new array of the sums.

# Define method to read a ragged array
def read_ragged_array(the_filename)
  
  # Initialize ragged array
  ragged_array = [nil]
  
  File.open(the_filename, "r") do |f|
  
    # Keep reading lines until the end of file is reached.
    while line = f.gets
      fields = line.chomp.split(" ")
      row = [ ]
      
      # Append each field item to the row array
      fields.each do |field|
        row << field.to_i
      end
      
      # When finised constructing row, append to ragged_array
      ragged_array << row
    end
  end
  
  # When finished reading file, return ragged array
  return ragged_array
  
end
