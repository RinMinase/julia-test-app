export allergies

function allergies(score::Int)
  allergyList = Dict(
    1 => "eggs",
    2 => "peanuts",
    4 => "shellfish",
    8 => "strawberries",
    16 => "tomatoes",
    32 => "chocolate",
    64 => "pollen",
    128 => "cats",
  )

  scoreAllergies = []

  for (value, allergen) in pairs(allergyList)
    if (score & value) != 0
      push!(scoreAllergies, allergen)
    end
  end

  print("Allergens: ")

  for allergen in scoreAllergies
    print("\"$allergen\" ")
  end

  println()
end
