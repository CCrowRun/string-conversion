test_string = "123"
test_string2 = "4"
test_string3 = "-9803"
test_string4 = "14.32"


def convert_to_int(string)
  #Check for floats
  string = string.split('.')[0] if string.include?('.')
  #Check for negative numbers
  sign = 1
  if string[0] == '-'
    string = string[1, string.length-1]
    sign = -1
  end
  num = 0
  string.each_char do |char|
    #Use ASCII character code, and subtract 48 (the character code of '0'
    num = num * 10 + (char.ord - 48)
  end
  return num * sign
end

convert_to_int(test_string)