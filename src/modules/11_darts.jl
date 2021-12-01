export darts

function darts(x::Int, y::Int)
  hyp = hypot(x, y)
  score = 10

  if hyp > 10
    score = 0
  elseif hyp > 5
    score = 1
  elseif hyp > 1
    score = 5
  end

  println("Score: " * string(score))
end
