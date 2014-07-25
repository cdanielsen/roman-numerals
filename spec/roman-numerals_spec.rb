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
end

describe('single_digits') do
  it('takes a single digit and converts it into a roman numeral') do
    single_digits(4).should(eq('IV'))
  end
end

describe('double_digits') do
  it('takes a double digit and converts it into a roman numeral') do
    double_digits(1).should(eq('X'))
  end
  it('takes a double digit and converts it into a roman numeral') do
    double_digits(3).should(eq('XXX'))
  end
  it('takes a double digit and converts it into a roman numeral') do
    double_digits(4).should(eq('XL'))
  end
end
