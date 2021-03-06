# one of the numerals in the ancient Roman system of notation, still used for certain limited purposes, as in some pagination, dates on buildings, etc. The common basic symbols are I, (=1), V, (=5), X, (=10), L, (=50), C, (=100), D, (=500), and M, (=1000). The Roman numerals for one to nine are: I, II, III, IV, V, VI, VII, VIII, IX. A bar over a letter multiplies it by 1000; thus, X̅ equals 10,000. Integers are written according to these two rules: If a letter is immediately followed by one of equal or lesser value, the two values are added; thus, XX equals 20, XV equals 15, VI equals 6. If a letter is immediately followed by one of greater value, the first is subtracted from the second; thus, IV equals 4, XL equals 40, CM equals 900. Examples: XLVII(=47), CXVI(=116), MCXX(=1120), MCMXIV(=1914). Roman numerals may be written in lowercase letters, though they appear more commonly in capitals.

# I (=1)
# V (=5)
# X (=10)
# L (=50)
# C (=100)
# D (=500)
# M(=1000)

def convert_numbers(input_number, result)
    if input_number >= 1000
        input_number -= 1000
        result << "M"
        convert_numbers(input_number, result)
    elsif input_number >= 900
        result << "CM"
        input_number -= 900
        convert_numbers(input_number, result)
    elsif input_number >= 500
        input_number -= 500
        result << "D"
        convert_numbers(input_number, result)
    elsif input_number >= 400
        input_number -= 400
        result << "CD"
        convert_numbers(input_number, result) 
    elsif input_number >= 100
        input_number -= 100
        result << "C"
        convert_numbers(input_number, result)
    elsif input_number >= 90
        input_number -= 90
        result << "XC"
        convert_numbers(input_number, result)
    elsif input_number >= 50
        input_number -= 50
        result << "L"
        convert_numbers(input_number, result)
    elsif input_number >= 40
        input_number -= 40
        result << "XL"
        convert_numbers(input_number, result)
    elsif input_number >= 10
        input_number -= 10
        result << "X"
        convert_numbers(input_number, result)
    elsif input_number >= 9
        input_number -= 9
        result << "IX"
        convert_numbers(input_number, result)
    elsif input_number >= 5
        input_number -= 5
        result << "V"
        convert_numbers(input_number, result)
    elsif input_number >= 4
        input_number -= 4
        result << "IV"
        convert_numbers(input_number, result)
    elsif input_number >= 1
        input_number -= 1
     result << "I"
    convert_numbers(input_number, result)
    else
       result
    end
end

def convert_from_numerals(input_letter, result)
    if input_letter == "M"
        result = result + 1000
    elsif input_letter == "D"
        result = result + 500
    elsif input_letter == "C"
        result = result + 100
    elsif input_letter == "L"
        result = result + 50
    elsif input_letter == "X"
        result = result + 10
    elsif input_letter == "V"
        result = result + 5
    elsif input_letter == "I"
        result = result + 1      
    end
end

def make_input_letters_an_array(input_letter)
    letter_array = input_letter.split("")
end

def array_loop(input_letter, result)
    result = result.to_i
    letter_array = input_letter.split("")
    letter_array.each do |index|
        # puts "input_letter is #{input_letter}, result is #{result}, letter_array is #{letter_array}"
        if index == "M"
            result = result + 1000
        elsif index == "D"
            result = result + 500
        elsif index == "C"
            result = result + 100
        elsif index == "L"
            result = result + 50
        elsif index == "X"
            result = result + 10
        elsif index == "V"
            result = result + 5
        elsif index == "I"
            result = result + 1      
        end
    end
    result
end

def have_to_subtract(input_letter, result)
    result = result.to_i
    if input_letter.include?("CM")
        input_letter = input_letter.gsub('CM','')
        result = result + 900
        puts result
        puts input_letter
        have_to_subtract(input_letter, result)
    elsif input_letter.include?("CD")
        input_letter = input_letter.gsub('CD','')
        result = result + 400
        puts result
        puts input_letter
        have_to_subtract(input_letter, result)
    elsif input_letter.include?("XC")
        input_letter = input_letter.gsub('XC','')
        result = result + 90
        puts result
        puts input_letter
        have_to_subtract(input_letter, result)
    elsif input_letter.include?("XL")
        input_letter = input_letter.gsub('XL','')
        result = result + 40
        puts result
        puts input_letter
        have_to_subtract(input_letter, result)
    elsif input_letter.include?("IX")
        input_letter = input_letter.gsub('IX','')
        result = result + 9
        puts result
        puts input_letter
        have_to_subtract(input_letter, result) 
    elsif input_letter.include?("IV")
        input_letter = input_letter.gsub('IV','')
        result = result + 4
        puts result
        puts input_letter
        have_to_subtract(input_letter, result) 
    else
        puts result
        puts input_letter
        array_loop(input_letter, result)
    end
end




# I (=1)
# V (=5)
# X (=10)
# L (=50)
# C (=100)
# D (=500)
# M(=1000)