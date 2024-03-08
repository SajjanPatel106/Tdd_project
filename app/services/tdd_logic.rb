class TddLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    numbers = num_string.split(',').map(&:to_i) # sum of numbers
    numbers.delete_if{|x| x >= 1000}
    if num_string.include?("-")
      num = num_string.split(',').map(&:to_i).select { |num| num < 0 }.join(", ")
      return "negative numbers are not allowed #{num}"
    end    
    numbers = num_string.gsub('\n', ",").split(',').map(&:to_i) if num_string.include?('\n') #sum of number when \n also present
    return "invalid" if num_string.split(',').include?('\n') # when string contain \n
    numbers = num_string.split("\;").map {|x| x[/\d+/]}.map(&:to_i) if num_string.start_with?("//") # code for delimeter
    numbers = num_string.split("*").map {|x| x[/\d+/]}.map(&:to_i) if num_string.include?('*')

    numbers.sum
  end
end