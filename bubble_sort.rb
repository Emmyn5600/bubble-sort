# Assignment_1

# bubble_sort

def bubble_sort(array)
  (0..array.length).each do |i|
    (i + 1...array.length).each do |j|
      array[i], array[j] = array[j], array[i] if array[i] > array[j]
    end
  end
  array
end

p bubble_sort([1, 5, 7, 100, 5, 8, 2, 9, 90])

# bubble_sort_by
