class LinearSearchAlgorithm
  def self.find_element(element)
    i = 0
    while i < @array.length
      return "O elemento está presente no índice: #{i}" if @array[i] == element

      i += 1
    end
    "O elemento escolhido #{element} não foi encontrado no array"
  end
end
