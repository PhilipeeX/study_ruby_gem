class MinimumProductSubset
  def self.minimum_product(array)

    n = array.size

  return array[0] if n == 1

  negmax = -Float::INFINITY
  posmin = Float::INFINITY
  count_neg = 0
  count_zero = 0
  product = 1

  array.each do |num|
    if num == 0
      count_zero += 1
      next
    end

    if num < 0
      count_neg += 1
      negmax = [negmax, num].max
    end

    posmin = num if num > 0 && num < posmin

    product *= num
  end

  return 0 if count_zero == n || (count_neg == 0 && count_zero > 0)

  return posmin if count_neg == 0

  if count_neg.even? && count_neg != 0
    product /= negmax.to_i
  end

  product
  end
end

