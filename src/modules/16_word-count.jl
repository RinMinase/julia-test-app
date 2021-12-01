export word_count

function word_count(sentence::String)
  str = lowercase(sentence)
  wordRegex = r"\w+('\w)?"
  wordList = Dict()

  for word in eachmatch(wordRegex, str)
    if !haskey(wordList, word.match)
      # if item does not exist on dictionary
      wordList[word.match] = 1
    else
      wordList[word.match] += 1
    end
  end

  for (word, iterations) in wordList
    println("$word: $iterations")
  end
end
