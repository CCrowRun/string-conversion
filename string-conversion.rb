def convert_to_int(string)
  #Remove any decimal value if the input is a float
  string = string.split('.')[0] if string.include?('.')
  #Recognize if it is a negative number and skip the first character 
  sign = string[0] == '-' ? -1 : 1
  string.gsub!(/\A-/, '')

  nums = string.chars.map { |char| char.ord - "0".ord }
  num = nums.inject(0) { |acc, num| 10 * acc + num }
  num * sign
end