def arabic_to_roman(arabic_num)
  roman_out = ""
  arabic_num = arabic_num.to_s.split("").reverse

  arabic_num.length.downto(0) do |i|
    roman_out += find_each_digit(arabic_num[i].to_i, i)
  end
  roman_out
end

def find_each_digit(digit, placevalue)
  numeral_table = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
  output = ""
  isAdditive = !(digit == 4 || digit == 9)
  degree_of_ten = numeral_table[placevalue * 2]
  degree_of_five = numeral_table[(placevalue * 2) + 1]
  next_degree_of_ten = numeral_table[(placevalue * 2) + 2]

  if(isAdditive)
    if digit >= 5
      digit -= 5
      output += degree_of_five
    end
    1.upto(digit) do
      output += degree_of_ten
    end

  else
    if digit == 4
      output += (degree_of_ten + degree_of_five)
    else
      output += (degree_of_ten + next_degree_of_ten)
    end
  end
  output
end

def roman_to_arabic(roman_num)
  arabic_out = ""
  arabic_out += roman_single_digits(roman_num).to_s
  arabic_out.to_i
end

def roman_single_digits(single_roman_num)
  output = 0

  if(single_roman_num.include? "IV")
    output = 4
  elsif(single_roman_num.include? "IX")
    output = 9
  elsif(single_roman_num.length > 0)
    output = single_roman_num.length
    if (single_roman_num.include? "V")
      #add 5 for V but length includes V, so subtract 1
      output += 4
    end
  end
output
end

def roman_double_digits(double_roman_num)
  output = 0

  if(double_roman_num.include? "XL")
    output = 4
  elsif(double_roman_num.include? "XC")
    output = 9
  elsif(double_roman_num.length > 0)
    output = double_roman_num.length
    if (double_roman_num.include? "L")
      output += 4
    end
  end
output
end







