module BookKeeping
  VERSION = 2
end

class Fixnum
  DECIMAL_TO_ROMAN = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  VALID_DECIMALS = DECIMAL_TO_ROMAN.keys.reverse

  def to_roman
    count = self
    roman_numeral = ''

    while count > 0
      VALID_DECIMALS.each do |current_decimal|
        if current_decimal <= count
          roman_numeral << DECIMAL_TO_ROMAN[current_decimal]
          count -= current_decimal
          break
        end
      end
    end

    roman_numeral
  end
end