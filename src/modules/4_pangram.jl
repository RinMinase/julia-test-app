export pangram

function pangram(input::String)
  alphabet = Set('a':'z')
  inputLower = Set(lowercase(input))

  if issubset(alphabet, inputLower)
    print("pangram")
  else
    print("not a pangram")
  end
end
