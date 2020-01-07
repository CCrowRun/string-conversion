test_string = "123"
test_string2 = "4"

def convert_to_int(string)
  mapping = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9
  }
  num = 0
  string.each_char do |char|
    num = num * 10 + mapping[char]
  end
  return num
end

convert_to_int(test_string)