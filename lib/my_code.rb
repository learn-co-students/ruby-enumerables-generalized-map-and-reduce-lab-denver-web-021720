# Your Code Here
def map(source_array)
  new_array =[]
  i = 0
  while i < source_array.length do
    new_array << yield(source_array[i])
  i += 1
  end
  new_array
end

def reduce(source_array, start_point = nil)
  if start_point
    total = start_point
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
  i += 1
  end
  total
end