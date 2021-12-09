export grains_on_square
export grains_total_number

function grains_on_square(square::Int)
  square <= 0 && println("Invalid number")
  square > 64 && println("There are only 64 squares on a board")

  println("Grains on Square: " * string(2^(square-1)))
end

function grains_total_number(square::Int)
  square <= 0 && println("Invalid number")
  square > 64 && println("There are only 64 squares on a board")

  println("Total Grains on Board: " * string(2^(square) - 1))
end
