export isbn

function isbn(input::AbstractString)
  if isISBNValid(input)
    println("ISBN is valid")
  else
    println("ISBN is invalid")
  end
end

function isISBNValid(input)
  total = 0;

  replaced = replace(input, "-" => "")
  reversed = reverse(replaced)
  replaced = tryparse(Int, reversed)
  normalized = digits(replaced)

  for (index, value) in enumerate(normalized)
    if value == "X"
      normalized[index] = 10
    end
  end

  for (index, value) in enumerate(normalized)
    if isnan(value)
      return false
    end

    total += normalized[index] * (10 - index + 1)
  end

  return total % 11 == 0
end
