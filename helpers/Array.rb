class Array
  def even
    self.find_all { |n| n % 2 == 0 }
  end

  def odd
    self.find_all { |n| n % 2 != 0 }
  end

  def sum
    self.reduce(:+)
  end
end