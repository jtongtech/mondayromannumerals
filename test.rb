require "minitest/autorun"
require_relative "roman_numerals.rb"

class TestRomanNumerals <Minitest::Test
	
	def test_1_equals_I
		assert_equal('I', convert_numbers(1))
    end
    
end