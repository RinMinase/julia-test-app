export luhn

function luhn(input::String)
  if luhnCheck(input)
    println("A valid luhn number")
  else
    println("Invalid luhn number")
  end
end

function luhnCheck(input)
  if length(input) < 1
    return false
  end

  # Checks if all are valid characters (digits/space)
  flag = all(c -> isdigit(c) || isspace(c), input)

  if !flag
    return false
  end

  parsedNum = [parse(Int, c) for c in input if isdigit(c)]

  for i in length(parsedNum)-1:-2:1
    parsedNum[i] *= 2

    if parsedNum[i] > 9
      parsedNum[i] -= 9
    end
  end

  return sum(parsedNum) % 10 == 0
end
