def roman_numerals(arabic_num)
  roman_out = ""
  numeral_table = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }
  1.upto(arabic_num) do
    roman_out+=numeral_table[1]
  end
roman_out
end
