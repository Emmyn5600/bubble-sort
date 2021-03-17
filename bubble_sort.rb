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

bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
