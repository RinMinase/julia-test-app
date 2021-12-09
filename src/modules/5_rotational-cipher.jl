export rotational_cipher
export rotationalCipher

function rotational_cipher(key::Integer, input::String)
  println("Plain: " * input)

  if key % 26 == 0
    println("Cipher: " * input)
  else
    println("Cipher: " * rotationalCipher(key, input))
  end
end

function rotationalCipher(rotations, input)::String
  output = []
  rotations = rotations % 26

  for i in input
    if i in 'a':'z'
      if (i + rotations <= 'z')
        push!(output, i + rotations)
      else
        overflow = (i + rotations) - 'z'
        push!(output, 'a' + overflow)
      end
    elseif i in 'A':'Z'
      if (i + rotations <= 'Z')
        push!(output, i + rotations)
      else
        overflow = (i + rotations) - 'Z'
        push!(output, 'A' + overflow)
      end
    else
      push!(output, i)
    end
  end

  return join(output)
end
