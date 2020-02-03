# Your Code Here
# map([1, 2, 3, -9]){|n| n * -1}
def map(array) 
  new_array = []
  counter = 0 
  
  while counter < array.length do 
    new_array << yield(array[counter])
    
    counter += 1 
  end
  
  new_array
end

#source_array = [1,2,3]
#expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
def reduce(array, starting_point=nil)
  if starting_point
    total = starting_point
    counter = 0 
  else 
    total = array[0]
    counter = 1 
  end
  
  while counter < array.length do 
    total = yield(total, array[counter])
    
    counter += 1 
  end
  
  total
end