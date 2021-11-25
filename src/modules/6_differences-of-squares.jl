export differences_of_squares

function differences_of_squares(input::Integer)
  sum = 0
  sumOfSquares = 0

  for i in 1:input
    sum += i
    sumOfSquares += i ^ 2
  end

  squareOfSums = sum ^ 2
  difference = squareOfSums - sumOfSquares

  println("Square of sums: " * string(squareOfSums))
  println("Sums of Squares: " * string(sumOfSquares))
  println("===========================")
  println("Difference: " * string(difference))
end
