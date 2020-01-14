def convert_to_int(string)
  #Remove any decimal value if the input is a float
  string = string.split('.')[0] if string.include?('.')
  #Recognize if it is a negative number and skip the first character 
  sign = string[0] == '-' ? -1 : 1
  string.gsub!(/\A-/, '')

  num = 0
  string.each_char do |char|
    #Use ASCII character code, and subtract 48 (the character code of '0')
    num = num * 10 + (char.ord - 48)
  end
  num * sign
end