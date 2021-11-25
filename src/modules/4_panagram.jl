export panagram

function panagram(input::String)
  alphabet = Set('a':'z')
  inputLower = Set(lowercase(input))

  if issubset(alphabet, inputLower)
    print("panagram")
  else
    print("not a panagram")
  end
end
