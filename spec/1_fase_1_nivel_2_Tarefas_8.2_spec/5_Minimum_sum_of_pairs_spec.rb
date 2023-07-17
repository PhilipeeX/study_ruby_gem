require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/5_Minimum_sum_of_pairs'

RSpec.describe MinimumSumOfPairs do
  describe '#minimum_sum' do
    it 'should return the minimum sum for [3, 4]' do
      array = [3, 4]
      expect(MinimumSumOfPairs.minimum_sum(array)).to eq(3)
    end

    it 'should return the minimum sum for [2, 4, 1, 3]' do
      array = [2, 4, 1, 3]
      expect(MinimumSumOfPairs.minimum_sum(array)).to eq(3)
    end

    it 'should return the minimum sum for [5, 2, 8, 1, 7]' do
      array = [5, 2, 8, 1, 7]
      expect(MinimumSumOfPairs.minimum_sum(array)).to eq(8)
    end

    it 'should return the minimum sum for [10, 20, 30, 40, 50, 60]' do
      array = [10, 20, 30, 40, 50, 60]
      expect(MinimumSumOfPairs.minimum_sum(array)).to eq(90)
    end
  end
end
