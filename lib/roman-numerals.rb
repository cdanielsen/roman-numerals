def roman_numerals(arabic_num)
  roman_out = ""
  # numeral_table = {
  #   1000 => 'M',
  #   500 => 'D',
  #   100 => 'C',
  #   50 => 'L',
  #   10 => 'X',
  #   5 => 'V',
  #   1 => 'I'
  # }

  arabic_num = arabic_num.to_s.split("").reverse

  the_ones = arabic_num[0].to_i
  the_tens = arabic_num[1].to_i
  roman_out = single_digits(the_ones)
  roman_out += double_digits(the_tens)
  # other functions here for larger digits
  roman_out
end

def double_digits(tens)
  the_tens_output = ""
  isAdditive = true
  if tens == 4 || tens == 9
    isAdditive = false
  end

    if(isAdditive)
      #binding.pry
      if tens >= 5
        tens -=5
        the_tens_output += 'L'
      end
        1.upto(tens) do
          the_tens_output+= 'X'
        end

    #subtractive
    else
      if tens == 4
        the_tens_output += 'XL'
      else the_tens_output += 'XC'
      end
    end
  the_tens_output
end

def single_digits(ones)
  the_ones_output = ""
  isAdditive = true
  if ones == 4 || ones == 9
    isAdditive = false
  end

    if(isAdditive)
      if ones >= 5
        ones -=5
        the_ones_output += 'V'
      end
        1.upto(ones) do
          the_ones_output+= 'I'
        end

    #subtractive
    else
      if ones == 4
        the_ones_output += 'IV'
      else the_ones_output += 'IX'
      end
    end
  the_ones_output

end

roman_numerals(4)



















  # current_numeral = 'M'

  # numeral_table.each do |key, value|
  #   if key < arabic_num
  #     current_numeral = value
  #     break
  #   end
  # end

  # 1.upto(arabic_num) do
  #   roman_out+=current_numeral
  # end

  # roman_arr = roman_out.to_a
  # roman_arr.each_slice(4) do |a,b,c,d|
  # puts
  # end
  # roman_out.to_a.each_index { |i|
  #   if roman_out
  # }

# puts roman_out

