export isogram

function isogram(str::String)
  str = filter(isletter, lowercase(str))
  isIsogram = length(unique(str)) == length(str)

  if isIsogram
    println("Input is an isogram")
  else
    println("Not an isogram")
  end
end
