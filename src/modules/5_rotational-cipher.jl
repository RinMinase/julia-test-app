export rotational_cipher

function rotational_cipher(key::Integer, input::String)
  println("Plain: " * input)

  if key % 26 == 0
    println("Cipher: " * input)
  else
    println("Cipher: " * rotate(key, input))
  end
end

function rotate(rotations, input)::String
  output = []

  for i in input
    if i in 'a':'z'
      push!(output, i + rotations)
    elseif i in 'A':'Z'
      push!(output, i + rotations)
    else
      push!(output, i)
    end
  end

  return join(output)
end
