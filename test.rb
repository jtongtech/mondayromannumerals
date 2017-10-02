require "minitest/autorun"
require_relative "roman_numerals.rb"

class TestRomanNumerals <Minitest::Test
	
    def test_1_equals_I
        input_number = 1
		assert_equal('I', convert_numbers(input_number))
    end

    def test_2_equals_II
        input_number = 2
        assert_equal('II', convert_numbers(input_number))
    end
    
    def test_5_equals_V
        input_number = 5
        assert_equal('V', convert_numbers(input_number))
    end
end