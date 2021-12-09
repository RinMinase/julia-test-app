export differences_of_squares

export differenceOfSquares
export squareOfSums
export sumsOfSquares

function differences_of_squares(input::Integer)
  squares = squareOfSums(input)
  sums = sumsOfSquares(input)

  println("Square of sums: $squares")
  println("Sums of Squares: $sums")
  println("===========================")
  println("Difference: $(differenceOfSquares(input))")
end

function squareOfSums(input)
  sum = 0

  for i in 1:input
    sum += i
  end

  return sum ^ 2
end

function sumsOfSquares(input)
  squares = 0

  for i in 1:input
    squares += i ^ 2
  end

  return squares
end

differenceOfSquares(input) = squareOfSums(input) - sumsOfSquares(input)
