def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  counter = 0 
  str_array = []
  while counter < src.length do
    ele1 = src[counter][0]
    ele2 = src[counter][1]
    
    str_array.push("I love #{ele1} and #{ele2} on my pizza")
    counter += 1
  end
  str_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  counter = 0 
  large_array = []
  while counter < src.length do
    if src[counter][0] > src[counter][1]
      large_array.push(src[counter][0])
    else
      large_array.push(src[counter][1])
    end
    counter += 1
  end
  return large_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  counter = 0
  total = 0
  while counter < src.length do 
    if (src[counter][0] % 2 == 0 && src[counter][1] % 2 == 0)
      total += src[counter][0] 
      total += src[counter][1]
    end
    counter += 1
  end
  total
end
