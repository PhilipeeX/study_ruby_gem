class BubbleSortAlgorithm
  def self.bubble_sort(array)
    n = array.length
    return array if n <= 1

    sorted = false
    while !sorted
      sorted = true
      (n - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          sorted = false
        end
      end
    end

    array
  end
end
