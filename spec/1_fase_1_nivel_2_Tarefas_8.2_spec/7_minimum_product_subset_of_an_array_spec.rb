require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/7_minimum_product_subset_of_an_array'


RSpec.describe MinimumProductSubset do
  describe ".minimum_product" do
    it "returns the minimum product of the subset" do
      expect(MinimumProductSubset.minimum_product([-1, -1, -2, 4, 3])).to eq(-24)
    end

    it "returns the element itself when there is a single element" do
      expect(MinimumProductSubset.minimum_product([-1])).to eq(-1)
      expect(MinimumProductSubset.minimum_product([0])).to eq(0)
      expect(MinimumProductSubset.minimum_product([5])).to eq(5)
    end

    it "returns 0 when there are zeros and no negative numbers" do
      expect(MinimumProductSubset.minimum_product([0, 0, 0])).to eq(0)
      expect(MinimumProductSubset.minimum_product([1, 2, 0, 3])).to eq(0)
    end

    it "returns the minimum positive number when there are no negative numbers and all other elements are positive" do
      expect(MinimumProductSubset.minimum_product([1, 2, 3])).to eq(1)
      expect(MinimumProductSubset.minimum_product([0, 1, 2, 3])).to eq(0)
    end
  end
end