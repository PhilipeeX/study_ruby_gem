require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/1_linear_search_algorithm.rb'

RSpec.describe LinearSearchAlgorithm do
  describe '#find_element' do
    it 'should find correct index of key' do
      array = [12, 24, 48, 127, 9, 18, 100, 1, 3, 321, 2, 15, 17, 10]
      key = 3
      result = LinearSearchAlgorithm.find_element(array, key)
      expect(result).to eq(8)
    end

    it 'should return error message for element not found' do
      array = [12, 24, 48, 127, 9, 18, 100, 1, 3, 321, 2, 15, 17, 10]
      key = 99
      result = LinearSearchAlgorithm.find_element(array, key)
      expect(result).to eq("O elemento escolhido #{key} não foi encontrado no array")
    end
  end
end