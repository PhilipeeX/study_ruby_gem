class RotateArray
  def self.rotate_array(array, k)
    n = array.length

    return array if n.zero?

    k = k % n

    reverse_array(array, 0, n - 1)
    reverse_array(array, 0, k - 1)
    reverse_array(array, k, n - 1)

    array
  end

  def self.reverse_array(array, start_index, end_index)
    while start_index < end_index
      temp = array[start_index]
      array[start_index] = array[end_index]
      array[end_index] = temp

      start_index += 1
      end_index -= 1
    end
  end
end
