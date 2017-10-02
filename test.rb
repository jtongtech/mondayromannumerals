require "minitest/autorun"
require_relative "roman_numerals.rb"

class TestRomanNumerals <Minitest::Test
	
    def test_1_equals_I
        input_number = 1
		assert_equal('I', convert_numbers(input_number))
    end
    
end