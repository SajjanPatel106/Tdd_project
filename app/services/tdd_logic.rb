class TddLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    if num_string.include?("-")
      num = num_string.split(',').map(&:to_i).select { |num| num < 0 }.join(", ")
      return "negative numbers are not allowed #{num}"
    end
    numbers = num_string.split(',').map(&:to_i).inject(0,:+) # sum of numbers

  end
end