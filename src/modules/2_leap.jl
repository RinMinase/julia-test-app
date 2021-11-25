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

function isDivisibleBy4(year)
  return year % 4 == 0
end

function isDivisibleBy100(year)
  return (year % 100) == 0
end

function isDivisibleBy400(year)
  return (year % 400) == 0
end
