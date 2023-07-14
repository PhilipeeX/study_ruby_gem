require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/3_Bubble_Sort'

RSpec.describe BubbleSortAlgorithm do
  describe '#bubble_sort' do
    it 'should sort the array in ascending order' do
      array = [4, 2, 6, 1, 9, 5]
      sorted_array = [1, 2, 4, 5, 6, 9]

      BubbleSortAlgorithm.bubble_sort(array)
      expect(array).to eq(sorted_array)
    end

    it 'should not modify the array if it is already sorted' do
      array = [1, 2, 3, 4, 5]
      sorted_array = [1, 2, 3, 4, 5]

      BubbleSortAlgorithm.bubble_sort(array)
      expect(array).to eq(sorted_array)
    end

    it 'should handle an empty array' do
      array = []
      sorted_array = []

      BubbleSortAlgorithm.bubble_sort(array)
      expect(array).to eq(sorted_array)
    end

    it 'should sort the array with duplicate elements' do
      array = [4, 2, 6, 1, 9, 5, 2, 4, 1]
      sorted_array = [1, 1, 2, 2, 4, 4, 5, 6, 9]

      BubbleSortAlgorithm.bubble_sort(array)
      expect(array).to eq(sorted_array)
    end
  end
end
