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

    def test_19_equals_XIX
        input_number = 19
        result = ""
        assert_equal('XIX', convert_numbers(input_number, result))
    end

    def test_24_equals_XXIV
        input_number = 24
        result = ""
        assert_equal('XXIV', convert_numbers(input_number, result))
    end

    def test_59_equals_LIX
        input_number = 59
        result = ""
        assert_equal('LIX', convert_numbers(input_number, result))
    end

    def test_900_equals_CM
        input_number = 900
        result = ""
        assert_equal('CM', convert_numbers(input_number, result))
	end
	
	def test_950_equals_CML
        input_number = 950
        result = ""
        assert_equal('CML', convert_numbers(input_number, result))
	end
	
	def test_1950_equals_CML
        input_number = 1950
        result = ""
        assert_equal('MCML', convert_numbers(input_number, result))
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
	
	def test_450_equals_CDL
		input_number = 450
		result = ""
		assert_equal("CDL", convert_numbers(input_number, result))
	end

	def test_95_equals_XCV
		input_number = 95
		result = ""
		assert_equal("XCV", convert_numbers(input_number, result))
	end

	def test_45_equal_XLV
		input_number = 45
		result = ""
		assert_equal("XLV", convert_numbers(input_number, result))
	end

	def test_19_equals_XIX
		input_number = 19
		result = ""
		assert_equal("XIX", convert_numbers(input_number, result))
	end

	def test_14_equals_XIV
		input_number = 14
		result = ""
		assert_equal("XIV", convert_numbers(input_number, result))
	end

	def test_number_with_lots_of_changes
		input_number = 4444
		result = ""
		assert_equal("MMMMCDXLIV", convert_numbers(input_number, result))
	end

	def test_number_6579
		input_number = 6579
		result = ""
		assert_equal("MMMMMMDLXXIX", convert_numbers(input_number, result))
	end

	def test_number_12756
		input_number = 12756
		result = ""
		assert_equal("MMMMMMMMMMMMDCCLVI", convert_numbers(input_number, result))
	end

    def test_roman_numeral_M
        input_letter = "M"
        result = 0
        assert_equal(1000, convert_from_numerals(input_letter, result))
    end

    def test_roman_numeral_D
        input_letter = "D"
        result = 0
        assert_equal(500, convert_from_numerals(input_letter, result))
    end

    def test_roman_numeral_C
        input_letter = "C"
        result = 0
        assert_equal(100, convert_from_numerals(input_letter, result))
    end
    
    def test_roman_numeral_L
        input_letter = "L"
        result = 0
        assert_equal(50, convert_from_numerals(input_letter, result))
    end
    
    def test_roman_numeral_X
        input_letter = "X"
        result = 0
        assert_equal(10, convert_from_numerals(input_letter, result))
    end

    def test_roman_numeral_V
        input_letter = "V"
        result = 0
        assert_equal(5, convert_from_numerals(input_letter, result))
    end
    
    def test_roman_numeral_I
        input_letter = "I"
        result = 0
        assert_equal(1, convert_from_numerals(input_letter, result))
    end

    def test_roman_numeral_split
        input_letter = "VVI"
        assert_equal(["V", "V", "I"], make_input_letters_an_array(input_letter))
    end

    def test_roman_numeral_III_returns_3
        input_letter = "III"
        result = ""
        assert_equal(3, array_loop(input_letter, result))
    end

    def test_include_XLIV_returns_44
        input_letter = "XLIV"
        result = ""
        assert_equal(44, have_to_subtract(input_letter, result))
    end

    def test_include_CMXLIV_return_944
        input_letter = "CMXLIV"
        result = ""
        assert_equal(944, have_to_subtract(input_letter, result))
    end

    def test_include_CDXCIX_return_499
        input_letter = "CDXCIX"
        result = ""
        assert_equal(499, have_to_subtract(input_letter, result))
    end
    def test_include_CDXC_return_490
        input_letter = "CDXC"
        result = ""
        assert_equal(490, have_to_subtract(input_letter, result))
    end
end

