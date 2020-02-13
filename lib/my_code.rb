# Your Code Here

def map(source_array)
  new = []
  i = 0

  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end

  new
end

def reduce (array, starting_point = nil)
  if starting_point
    sum = starting_point
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
