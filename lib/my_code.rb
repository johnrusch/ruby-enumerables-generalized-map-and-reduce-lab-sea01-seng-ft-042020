# Your Code Here
require 'pry'
def map(source_array)
  new = []
  counter = 0 
  while counter < source_array.length do
    new.push(yield(source_array[counter]))
    
    counter += 1
  end
 new
end

def reduce(source_array, starting_point = 0)
  
  counter = 0
  
  total = starting_point
    
    while counter < (source_array.length - 1) do
      
      if !source_array[counter] 
        
        return false
        
      else
        

    
        total += yield(source_array)
    
        counter += 1 
        
      end
    
    end
    
  
  
  total
  
end