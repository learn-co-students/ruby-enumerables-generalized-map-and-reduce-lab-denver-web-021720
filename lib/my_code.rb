def map(arr)
  i = 0 
  arr2 = []
  
  while i < arr.length do 
    arr2.push(yield(arr[i]))
    i += 1
  end 
  return arr2
end 

def reduce(arr, sv=nil)
  if sv then 
    sum = sv
    i = 0 
  else 
    sum = arr[0]
    i = 1 
  end 
  while i < arr.length do 
    sum = yield(sum, arr[i])
    i += 1
  end 
  return sum
end