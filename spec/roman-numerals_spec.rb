require ('rspec')
require ('roman-numerals')
require ('pry')

describe('roman_numerals') do
  it('converts 1 into a roman numeral') do
    roman_numerals(1).should(eq("I"))
  end

  it('converts 2 into a roman numeral') do
    roman_numerals(2).should(eq("II"))
  end

  it('converts 4 into a roman numeral') do
    roman_numerals(4).should(eq("IV"))
  end

  it('converts 10 into a roman numeral') do
    roman_numerals(10).should(eq("X"))
  end

  it('converts 100 into a roman numeral') do
    roman_numerals(100).should(eq("C"))
  end

  it('converts 100 into a roman numeral') do
    roman_numerals(1000).should(eq("M"))
  end

  it('converts 100 into a roman numeral') do
    roman_numerals(2439).should(eq("MMCDXXXIX"))
  end
end

describe('first_digit') do
  it('takes a single digit and converts it into a roman numeral') do
    first_digit(4).should(eq('IV'))
  end
end

describe('second_digit') do
  it('takes the second digit and converts it into a roman numeral') do
    second_digit(1).should(eq('X'))
  end

  it('takes the second digit and converts it into a roman numeral') do
    second_digit(3).should(eq('XXX'))
  end

  it('takes the second digit and converts it into a roman numeral') do
    second_digit(4).should(eq('XL'))
  end
end

describe('third_digit') do
  it('takes the third digit and converts it into a roman numeral') do
    third_digit(3).should(eq('CCC'))
  end
end

describe('fourth_digit') do
  it('takes the fourth digit and converts it into a roman numeral') do
    fourth_digit(1).should(eq('M'))
  end

  it('takes the fourth digit and converts it into a roman numeral') do
    fourth_digit(3).should(eq('MMM'))
  end
end

describe('find_each_digit') do
  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(1, 0).should(eq('I'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(1, 1).should(eq('X'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(1, 2).should(eq('C'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(1, 3).should(eq('M'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(6, 0).should(eq('VI'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(6, 1).should(eq('LX'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(6, 2).should(eq('DC'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(3, 3).should(eq('MMM'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(4, 0).should(eq('IV'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(9, 0).should(eq('IX'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(4, 1).should(eq('XL'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(9, 1).should(eq('XC'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(4, 2).should(eq('CD'))
  end

  it('takes the current arabic digit and an index value for which digit it is, and converts it to roman numerals') do
    find_each_digit(9, 2).should(eq('CM'))
  end
end

