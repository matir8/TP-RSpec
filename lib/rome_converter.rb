class RomeConverter
  def roman_arr 
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end

  def to_rome int_arg
    num = int_arg.to_i

    roman_arr.reduce('') do |res, (arab, roman)|
      whole_part, num = num.divmod(arab)
      res << roman * whole_part
    end
  end

  def to_dec string_arg
    result = 0
    str = string_arg
    roman_arr.values.each do |roman|
      while str.start_with?(roman)
        result += roman_arr.invert[roman]
        str = str.slice(roman.length, str.length)
      end
    end
    result
  end
end
