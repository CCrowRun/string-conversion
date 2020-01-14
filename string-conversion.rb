def convert_to_int(string)
  #Remove any decimal value if the input is a float
  string = string.split('.')[0] if string.include?('.')
  #Recognize if it is a negative number and skip the first character 
  sign = string[0] == '-' ? -1 : 1
  string.gsub!(/\A-/, '')

  num = 0
  string.each_char do |char|
    num = num * 10 + (char.ord - "0".ord)
  end
  num * sign
end