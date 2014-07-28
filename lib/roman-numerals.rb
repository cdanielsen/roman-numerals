def roman_numerals(arabic_num)
  roman_out = ""
  arabic_num = arabic_num.to_s.split("").reverse

  arabic_num.length.downto(0) do |i|
    roman_out += find_each_digit(arabic_num[i].to_i, i)
  end
  roman_out
end

def find_each_digit(digit, placeholder)
  numeral_table = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
  output = ""
  isAdditive = true
  if digit == 4 || digit == 9
    isAdditive = false
  end

  if(isAdditive)
    if digit >= 5
      digit -=5
      output += numeral_table[placeholder*2 + 1]
    end
    1.upto(digit) do
      output+= numeral_table[placeholder*2]
    end

  else
    if digit == 4
      output += (numeral_table[placeholder*2] + numeral_table[placeholder*2 + 1])
    else output += (numeral_table[placeholder*2] + numeral_table[placeholder*2 + 2])
    end
  end
  output
end
