export pascals_triangle

function pascals_triangle(depth::Int)
  if depth < 0
    println("Invalid number")
  else
    list = [];

    for i in 1:depth
      row = ones(Int, i);

      for j in 2:(i-1)
        row[j] = list[i-1][j-1] + list[i-1][j];
      end

      push!(list, row);
    end

    for (index, i) in enumerate(list)
      spaces = length(list) - index

      for space in 1:spaces
        print(" ")
      end

      for j in list[index]
        print("$j ")
      end

      println()
    end
  end
end
