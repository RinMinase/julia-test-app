export sieve

function sieve(limit::Int)
  result = []
  prime = fill(true, limit)

  for i in 2:limit
    if prime[i]
      push!(result, i)

      # starts at 2 * i
      # increments by i
      # ends at limit
      for j in 2 * i : i : limit
        prime[j] = false
      end
    end
  end

  print("Primes: ")

  for i in result
    print("$i ")
  end

  println()
end
