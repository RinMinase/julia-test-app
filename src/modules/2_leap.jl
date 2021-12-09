export leap

function leap(year::Int)
  if year < 1900
    print("Invalid year")
  else
    if isLeapYear(year)
      print("Leap Year")
    else
      print("Not a Leap Year")
    end
  end
end

function isLeapYear(year)
  if (isDivisibleBy100(year) && isDivisibleBy400(year)) || (!isDivisibleBy100(year) && !isDivisibleBy100(year))
    if isDivisibleBy4(year)
      return true
    end
  end

  return false
end

isDivisibleBy4(year) = year % 4 == 0
isDivisibleBy100(year) = (year % 100) == 0
isDivisibleBy400(year) = (year % 400) == 0
