export trinary

function trinary(input::String)
  output = 0

  for ch in input
    ch in "012" || return 0
    output = (3 * output) + ch - '0'
  end

  println("Decimal: $output")
end
