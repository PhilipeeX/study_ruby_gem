class FindMaximumEqual
  def self.find_maximum_equal_sum(stack1, stack2, stack3)
    sum1 = stack1.sum
    sum2 = stack2.sum
    sum3 = stack3.sum

    until stack1.empty? || stack2.empty? || stack3.empty?
      if sum1 == sum2 && sum2 == sum3
        return sum1
      elsif sum1 >= sum2 && sum1 >= sum3
        sum1 -= stack1.shift
      elsif sum2 >= sum1 && sum2 >= sum3
        sum2 -= stack2.shift
      elsif sum3 >= sum1 && sum3 >= sum2
        sum3 -= stack3.shift
      end
    end

    0
  end
end
