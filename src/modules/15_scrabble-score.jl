export scrabble_score

function scrabble_score(str::String)
  if scrabbleValidWord(str)
    score = 0

    for ch in str
      score += scrabbleCharPoint(ch)
    end

    println("Word Score: $score")
  else
    println("Invalid word")
  end
end

function scrabbleValidWord(str)
  return !occursin(r"\W", str)
end

function scrabbleCharPoint(c)
  ch = uppercase(c)

  ch in "AEIOULNRST" && return 1
  ch in "DG" && return 2
  ch in "BCMP" && return 3
  ch in "FHVWY" && return 4
  ch in "K" && return 5
  ch in "JX" && return 8
  ch in "QZ" && return 10

  return 0
end
