
def bubble_sort(array)
  for i in 0..array.length 
    for j in i+1..array.length-1  
      if(array[i] > array[j])  
      array[i], array[j] = array[j], array[i] 
      end
    end
  end
  return array
end
