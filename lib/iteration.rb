def join_ingredients(src)

 new_array = []  
 row_index = 0 
 while row_index < src.count do 
   inner = src[row_index]
   new_array << "I love #{inner[0]} and #{inner[1]} on my pizza" 
   row_index += 1 
 end 
  new_array 
end

def find_greater_pair(src)
  
  new_array = []
  row_index = 0 
  while row_index < src.count do 
    new_src = src[row_index].sort
    new_array << new_src[-1]
    row_index += 1 
  end 
  new_array
end

def total_even_pairs(src)
  
  total = 0 
  row_index = 0 
  while row_index < src.count do 
    if (src[row_index][0] % 2 == 0) && (src[row_index][1] % 2 == 0)
     total += (src[row_index][0] + src[row_index][1])
    end 
    row_index += 1 
  end
  total 
end
