require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/11_reversal_algorithm_for_right_rotation_of_an_array'

RSpec.describe RotateArray do
  describe '.rotate_array' do
    it 'rotates the array by k elements' do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      k = 3
      expected_output = [8, 9, 10, 1, 2, 3, 4, 5, 6, 7]

      expect(RotateArray.rotate_array(array, k)).to eq(expected_output)
    end

    it 'rotates the array by k elements for a different input' do
      array = [121, 232, 33, 43, 5]
      k = 2
      expected_output = [43, 5, 121, 232, 33]

      expect(RotateArray.rotate_array(array, k)).to eq(expected_output)
    end

    it 'handles an empty array' do
      array = []
      k = 5
      expected_output = []

      expect(RotateArray.rotate_array(array, k)).to eq(expected_output)
    end

    it 'handles k greater than array length' do
      array = [1, 2, 3, 4, 5]
      k = 10
      expected_output = [1, 2, 3, 4, 5]

      expect(RotateArray.rotate_array(array, k)).to eq(expected_output)
    end

    it 'rotates the array by k = 0 elements' do
      array = [1, 2, 3, 4, 5]
      k = 0
      expected_output = [1, 2, 3, 4, 5]

      expect(RotateArray.rotate_array(array, k)).to eq(expected_output)
    end
  end
end
