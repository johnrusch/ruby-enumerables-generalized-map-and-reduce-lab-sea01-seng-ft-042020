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
  

  
  if starting_point
    
    total = starting_point
    
    counter = 0
    
  else
    
    total = source_array[0]
    
    counter = 1 
    
  end
    
    while counter < (source_array.length) 
      
      total = yield(total, source_array[counter])
      
      if !source_array[counter] 
        
        return false
        
      else
        

    
        total += yield(source_array)
    
        counter += 1 
        
      end
    
    end
    
  
  
  total
  
end