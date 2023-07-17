require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/6_maximize_array_sum_after_k_negations'

RSpec.describe MaximizeArraySum do
  describe "maximum_sum" do
    context "when array = [-2, 0, 5, -1, 2] and k = 4" do
      it "returns 10" do
        array = [-2, 0, 5, -1, 2]
        k = 4
        expect(MaximizeArraySum.maximum_sum(array, k)).to eq(10)
      end
    end

    context "when array = [9, 8, 8, 5] and k = 3" do
      it "returns 20" do
        array = [9, 8, 8, 5]
        k = 3
        expect(MaximizeArraySum.maximum_sum(array, k)).to eq(20)
      end
    end

    context "when array = [1, 2, 3, 4, 5] and k = 2" do
      it "returns 15" do
        array = [1, 2, 3, 4, 5]
        k = 2
        expect(MaximizeArraySum.maximum_sum(array, k)).to eq(15)
      end
    end

    context "when array = [-10, -5, 0, 5, 10] and k = 5" do
      it "returns 30" do
        array = [-10, -5, 0, 5, 10]
        k = 5
        expect(MaximizeArraySum.maximum_sum(array, k)).to eq(30)
      end
    end
  end
end
