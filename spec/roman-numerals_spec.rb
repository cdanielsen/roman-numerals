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
