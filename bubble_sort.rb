# Assignment_1

# bubble_sort
def bubble_sort(array)
  return array if array.length <= 1

  0.upto(array.length - 1) do |j|
    0.upto(array.length - 2 - j) do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      # You can use #p array to check if all elements are being sorted
      # p array
    end
  end
  array
end
p bubble_sort([1, 8, 4, 9, 2, 0, 100, 5, 1])

# bubble_sort_by
def bubble_sort_by(string)
  string.length.times do
    change = 0
    (string.length - 1).times do |i|
      if yield(string[i], string[i + 1]).positive?
        string[i], string[i + 1] = string[i + 1], string[i]
        change += 1
      end
    end
    break string if change.zero?
  end
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
