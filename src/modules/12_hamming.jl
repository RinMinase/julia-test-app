export hamming

function hamming(strand1::String, strand2::String)
  if length(strand1) != length(strand2)
    println("Length of strands must be equal")
  else
    distance = hamming_count(strand1, strand2)

    println("Hamming distance: " * string(distance))
  end
end

function hamming_count(strand1, strand2)
  difference = 0

  for (char1, char2) in zip(strand1, strand2)
    if char1 != char2
      difference += 1
    end
  end

  return difference
end
