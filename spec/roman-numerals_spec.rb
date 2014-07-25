require ('rspec')
require ('roman-numerals')
require ('pry')

describe('roman_numerals') do
  it('converts 1 into a roman numeral') do
    roman_numerals(1).should(eq("I"))
  end
end
