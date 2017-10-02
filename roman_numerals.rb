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
    elsif input_number >= 500
        input_number -= 500
        result << "D"
        convert_numbers(input_number, result)
    elsif input_number >= 100
        input_number -= 100
        result << "C"
        convert_numbers(input_number, result)
    elsif input_number >= 50
        input_number -= 50
        result << "L"
        convert_numbers(input_number, result)
    elsif input_number >= 10
        input_number -= 10
        result << "X"
        convert_numbers(input_number, result)
    elsif input_number >= 5
        input_number -= 5
        result << "V"
        convert_numbers(input_number, result)
    elsif input_number >= 1
        input_number -= 1
     result << "I"
    convert_numbers(input_number, result)
    else
       result
    end
end




