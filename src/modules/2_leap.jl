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
  if isDivisibleBy4(year) && isEvenDivisibleBy100(year)
    return true
  end

  return false
end

function isDivisibleBy4(year)
  return year % 4 == 0
end

function isEvenDivisibleBy100(year)
  return (year / 100) % 2 == 0
end
