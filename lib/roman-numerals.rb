def roman_numerals(arabic_num)
  roman_out = ""
  numeral_table = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

arabic_num = arabic_num.to_s.split("").reverse

the_ones = arabic_num[0].to_i
the_ones_output = ""

isAdditive = true
if the_ones == 4 || the_ones == 9
  isAdditive = false
end

  if(isAdditive)
    if the_ones >= 5
      the_ones -=5
      the_ones_output += 'V'
    end
      1.upto(the_ones) do
        the_ones_output+= 'I'
      end

  #subtractive
  else
    if the_ones == 4
      the_ones_output += 'IV'
    else the_ones_output += 'IX'
    end
  end
puts the_ones_output
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

