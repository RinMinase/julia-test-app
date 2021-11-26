export raindrops

function raindrops(input::Integer)
  output = ""

  if input % 3 == 0 (output *= "Pling") end
  if input % 5 == 0 (output *= "Plang") end
  if input % 7 == 0 (output *= "Plong") end

  if output == ""
    print(string(input))
  else
    print(output)
  end
end
