export nucleotide_count

function nucleotide_count(input::String)
  if isValidNucleotide(input)
    enumerateNucleotides(input)
  else
    print("error")
  end
end

function isValidNucleotide(input)
  for i in input
    if i != 'A' && i != 'C' && i != 'G' && i != 'T'
      return false
    end
  end

  return true
end

function enumerateNucleotides(input)
  A = 0
  C = 0
  G = 0
  T = 0

  for i in input
    if i == 'A' A += 1 end
    if i == 'C' C += 1 end
    if i == 'G' G += 1 end
    if i == 'T' T += 1 end
  end

  print("\'A\': " * string(A) * ", ")
  print("\'C\': " * string(C) * ", ")
  print("\'G\': " * string(G) * ", ")
  println("\'T\': " * string(T))
end
