class LinearSearchAlgorithm
  def self.find_element(arr, element)
    i = 0
    while i < arr.length
      return i if arr[i] == element

      i += 1
    end
    "O elemento escolhido #{element} não foi encontrado no array"
  end
end
