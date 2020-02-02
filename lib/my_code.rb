def map(array)
  new = []
  i=0
  while i<array.length do
    new.push(yield(array[i]))
    i=i+1
  end

  return new
end

def reduce(array,sp=nil)
 if sp
   t=sp
   i=0
 else
   t=array[0]
   i=1
 end
 while i<array.length
    t = yield(t,array[i])
    i+=1
 end
  t
end
