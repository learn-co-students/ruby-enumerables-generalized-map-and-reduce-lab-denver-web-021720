# Your Code Here
def map(array)
  noo_array = []
  i = 0
  while i < array.length
    noo_array << (yield(array[i]))
    i += 1
  end
  noo_array
end

def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end