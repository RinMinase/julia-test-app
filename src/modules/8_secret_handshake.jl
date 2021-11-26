export secret_handshake

function secret_handshake(input::Integer)
  print(handshake(input))
end

function handshake(input)::Array{String}
  output = []

  if (input < 32)
    binary = digits(input, base=2, pad=5)

    binary[1] == 1 && push!(output, "wink")
    binary[2] == 1 && push!(output, "double blink")
    binary[3] == 1 && push!(output, "close your eyes")
    binary[4] == 1 && push!(output, "jump")

    if (binary[5] == 1)
      output = reverse(output)
    end
  end

  return output
end
