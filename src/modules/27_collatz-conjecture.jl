export collatz_conjecture

function collatz_conjecture(input::Int)
  if input < 1
    println("Number not accepted")
  else
    steps = 0

    while input > 1
      steps += 1
      input = iseven(Int(input)) ? input / 2 : 3 * input + 1
    end

    return steps
  end
end
