export anagram

function anagram(str::String, candidates::Array)
  function isanagram(x, y)
    x = uppercase(x)
    y = uppercase(y)

    (x != y) && sort(collect(x)) == sort(collect(y))
  end

  output = []
  for candidate in candidates
    if isanagram(candidate, str)
      push!(output, candidate)
    end
  end

  print("Anagrams: ")

  for i in output
    print("$i ")
  end

  println()
end
