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
  the_hundreds = arabic_num[2].to_i
  the_thousands = arabic_num[3].to_i
  roman_out = fourth_digit(the_thousands)
  roman_out += third_digit(the_hundreds)
  roman_out += second_digit(the_tens)
  roman_out += first_digit(the_ones)
  # other functions here for larger digits
  roman_out
end

def fourth_digit(thousands)

the_thousands_output = ""

  1.upto(thousands) do
    the_thousands_output+= 'M'
  end

  the_thousands_output

end

def third_digit(hundreds)
  the_hundreds_output = ""
  isAdditive = true
  if hundreds == 4 || hundreds == 9
    isAdditive = false
  end

    if(isAdditive)
      if hundreds >= 5
        hundreds -=5
        the_hundreds_output += 'D'
      end
        1.upto(hundreds) do
          the_hundreds_output+= 'C'
        end

    #subtractive
    else
      if hundreds == 4
        the_hundreds_output += 'CD'
      else the_hundreds_output += 'CM'
      end
    end
  the_hundreds_output
end

def second_digit(tens)
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

def first_digit(ones)
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
