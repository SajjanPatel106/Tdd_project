class TddLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    numbers = num_string.split(',').map(&:to_i).inject(0,:+) # sum of numbers
  end
end