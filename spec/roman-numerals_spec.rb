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
end
