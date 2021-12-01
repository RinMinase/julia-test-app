export etl

function etl()
  # Sample ETL
  dict = Dict(
    1 => "AEIOULNRST",
    2 => "DG",
    3 => "BCMP",
    4 => "FHVWY",
    5 => "K",
    8 => "JX",
    10 => "QZ",
  )

  newDict = etl_process(dict)

  println("Old dictionary\n $dict")
  println("\nNew dictionary\n $newDict")
end

function etl(input::Dict)
  newDict = etl_process(input)

  println(newDict)
end

function etl_process(input::Dict)
  output = Dict()

  for (value, letters) in input
		for ch in letters
			output[lowercase(ch)] = value
		end
	end

  return output
end
