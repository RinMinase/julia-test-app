export binary_search

function binary_search()
  # example usage of binary search
  haystack = [1,3,5,7,9,11]
  needle = 4

  bst(haystack, needle)
end

function binary_search(haystack, needle)
  bst(haystack, needle)
end

function bst(haystack, needle)
  low = 1
  high = length(haystack)

  while low <= high
    idx = Int(floor((high + low) / 2))
    if needle > haystack[idx]
      low = idx + 1
    elseif needle < haystack[idx]
      high = idx - 1
    else
      return idx:idx
    end
  end

  println("Low: $low \nHigh: $high")
end
