export roman

function roman(number::Int)
  romanNumerals = [
    (1000, "M"),
    (900 , "CM"),
    (500 , "D"),
    (400 , "CD"),
    (100 , "C"),
    (90 , "XC"),
    (50 , "L"),
    (40 , "XL"),
    (10 , "X"),
    (9 , "IX"),
    (5 , "V"),
    (4 , "IV"),
    (1 , "I")
  ]

  if number <= 0 || number >= 4000
    println("Invalid number")
  else
    roman_number = ""

    for (arabic, roman) in romanNumerals
      while arabic <= number
        roman_number *= roman
        number -= arabic
      end
    end

    println("Roman Numeral: $roman_number")
  end
end
