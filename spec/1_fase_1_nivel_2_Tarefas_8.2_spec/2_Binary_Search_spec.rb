require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/2_Binary_Search'

RSpec.describe BinarySearch do
  describe '#find_element_recursively' do
    let(:array) { [1, 2, 3, 9, 10, 12, 15, 17, 18, 24, 48, 100, 127, 321] }
    let(:array_left) { 0 }
    let(:array_right) { array.length - 1 }

    it 'should find the correct index of the key' do
      element = 3
      result = BinarySearch.find_element_recursively(array, array_left, array_right, element)
      expect(result).to eq("O elemento está no índice: 2")
    end

    it 'should return error message for element not found' do
      element = 99
      result = BinarySearch.find_element_recursively(array, array_left, array_right, element)
      expect(result).to eq("Elemento não encontrado")
    end
  end
end
