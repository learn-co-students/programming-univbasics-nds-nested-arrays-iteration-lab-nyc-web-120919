def join_ingredients(src)
  i = 0
  new_array = []
  while i < src.size do
    new_array[i] = "I love #{src[i][0]} and #{src[i][1]} on my pizza"
    i += 1
  end
  return new_array
end

def find_greater_pair(src)
  i = 0
  new_array = []
  while i < src.size do
    new_array[i] = src[i][0] > src[i][1] ? src[i][0] : src[i][1]
    i += 1
  end
  return new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i = 0
  sum = 0
  while i < src.size do
    if (src[i][0].even?() && src[i][1].even?()) 
      sum += src[i][0] + src[i][1]
    end
    i += 1
  end
  return sum
end
