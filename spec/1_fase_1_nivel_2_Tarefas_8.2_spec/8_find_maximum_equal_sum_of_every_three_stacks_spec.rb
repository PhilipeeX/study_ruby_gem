require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/8_find_maximum_equal_sum_of_every_three_stacks'

RSpec.describe FindMaximumEqual do
  describe '.find_maximum_equal_sum' do
    it 'returns 0 when all stacks are empty' do
      stack1 = []
      stack2 = []
      stack3 = []

      result = FindMaximumEqual.find_maximum_equal_sum(stack1, stack2, stack3)

      expect(result).to eq(0)
    end

    it 'returns the maximum equal sum when sums are already equal' do
      stack1 = [3, 5, 2]
      stack2 = [4, 4, 4]
      stack3 = [1, 3, 6]

      result = FindMaximumEqual.find_maximum_equal_sum(stack1, stack2, stack3)

      expect(result).to eq(15)
    end

    it 'returns the maximum equal sum after removing elements' do
      stack1 = [1, 2, 3, 4]
      stack2 = [5, 6, 7, 8]
      stack3 = [9, 10, 11, 12]

      result = FindMaximumEqual.find_maximum_equal_sum(stack1, stack2, stack3)

      expect(result).to eq(27)
    end

    it 'returns 0 when it is not possible to have equal sums' do
      stack1 = [1, 1, 1, 1]
      stack2 = [2, 2, 2, 2]
      stack3 = [3, 3, 3, 3]

      result = FindMaximumEqual.find_maximum_equal_sum(stack1, stack2, stack3)

      expect(result).to eq(0)
    end
  end
end