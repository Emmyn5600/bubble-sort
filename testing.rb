#Assignment_1

#bubble_sort


def bubble_sort(array)
  for i in 0..array.length 
    for j in i+1...array.length 
      if(array[i] > array[j])  
      array[i], array[j] = array[j], array[i] 
      end
    end
  end
  return array
end

p bubble_sort([1,5,7,100,5,8,2,9,90])


#bubble_sort_by
