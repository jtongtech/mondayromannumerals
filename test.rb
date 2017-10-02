require "minitest/autorun"
require_relative "roman_numerals.rb"

class TestRomanNumerals <Minitest::Test
	
    def test_1_equals_I
        input_number = 1
        result = ""
		assert_equal('I', convert_numbers(input_number, result))
    end

    def test_2_equals_II
        input_number = 2
        result = ""
        assert_equal('II', convert_numbers(input_number, result))
    end
    
    def test_5_equals_V
        input_number = 5
        result = ""
        assert_equal('V', convert_numbers(input_number, result))
    end

    def test_6_equals_VI
        input_number = 6
        result = ""
        assert_equal('VI', convert_numbers(input_number, result))
    end

    def test_10_equals_X
        input_number = 10
        result = ""
        assert_equal('X', convert_numbers(input_number, result))
    end

    def test_11_equals_XI
        input_number = 11
        result = ""
        assert_equal('XI', convert_numbers(input_number, result))
    end

    # def test_14_equals_XVI
	# 	input_number = 14
	# 	result = ""
    #     assert_equal('XVI', convert_numbers(input_number, result))
    # end

    # def test_19_equals_XIX
    #     input_number = 19
    #     result = ""
    #     assert_equal('XIX', convert_numbers(input_number, result))
    # end

    # def test_24_equals_XXIV
    #     input_number = 24
    #     result = ""
    #     assert_equal('XXIV', convert_numbers(input_number, result))
    # end

    # def test_59_equals_LIX
    #     input_number = 59
    #     result = ""
    #     assert_equal('LIX', convert_numbers(input_number, result))
    # end

    def test_900_equals_CM
        input_number = 900
        result = ""
        assert_equal('CM', convert_numbers(input_number, result))
    end

    def test_500_equals_D
        input_number = 500
        result = ""
        assert_equal('D', convert_numbers(input_number, result))
    end

    def test_100_equals_C
        input_number = 100
        result = ""
        assert_equal('C', convert_numbers(input_number, result))
    end

    def test_50_equals_L
        input_number = 50
        result = ""
        assert_equal('L', convert_numbers(input_number, result))
    end
end